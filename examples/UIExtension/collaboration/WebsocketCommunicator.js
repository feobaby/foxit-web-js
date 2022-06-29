const OPEN_FILE_TYPE = PDFViewCtrl.constants.OPEN_FILE_TYPE;

function urlJoin(...paths) {
    return paths.join('');
}

function createDeferred() {
    const deferred = {};
    deferred.promise = new Promise((resolve, reject) => {
        deferred.resolve = resolve;
        deferred.reject = reject;
    } )
    return deferred;
}
const noop = () => {};
const WebSocket = window.MozWebSocket || window.WebSocket;

export default class WebSocketCommunicator {
    constructor(websocketServer, apiServer = location.origin) {
        this.websocketServer = websocketServer.trim();
        this.apiServer = apiServer.trim();
        this.messageReceiver = noop;
        this.closeEventListener = noop;
    }
    isConnected() {
        if(!this.socket) {
            return Promise.resolve(false);
        } else {
            switch(this.socket.readyState) {
                case WebSocket.OPEN:
                    return Promise.resolve(true);
                case WebSocket.CLOSED:
                case WebSocket.CLOSING:
                    return Promise.resolve(false);
            }
            return this.connectStatusDefer.promise;
        }
    }
    connect(shareId) {
        if(this.socket) {
            switch(this.socket.readyState) {
                case WebSocket.CLOSED:
                case WebSocket.CLOSING:
                    break;
                default:
                    this.socket.onclose = null;
                    this.socket.close();
            }
        }
        this.connectStatusDefer = createDeferred();

        this.socket = new WebSocket(urlJoin(this.websocketServer, 'collab-ws/ws') + '?shareId='+shareId);
        this.socket.onmessage = e => {
            this.messageReceiver(e.data);
        };
        this.socket.onclose = () => {
            this.closeEventListener();
        };
        return new Promise((resolve, reject) => {
            this.socket.onopen = () => {
                this.connectStatusDefer.resolve(true);
                resolve(true);
            };
            this.socket.onerror = () => {
                this.connectStatusDefer.resolve(false);
                resolve(false);
            };
        });
    }
    disconnect() {
        this.socket.onclose = null;
        this.socket.close();
        return Promise.resolve(true);
    }
    createSession(doc, openFileParams) {
        const url = urlJoin(this.apiServer, 'collab-ws', 'share');
        const formData = new FormData();
        let openFileParamsJson;
        if(openFileParams.type === OPEN_FILE_TYPE.FROM_FILE) {
            let fileblob = openFileParams.file;
            if(!(fileblob instanceof Blob)) {
                fileblob = new Blob([fileblob], { type: 'application/pdf' });
            }
            formData.append('file', fileblob, openFileParams.options.fileName);
            openFileParamsJson = JSON.stringify(openFileParams, (key, value) => {
                if(key !== 'file') {
                    return value;
                }
            });
        } else {
            openFileParamsJson = JSON.stringify(openFileParams);
        }
        formData.append('open-file-params', openFileParamsJson);
        return fetch(url, {
            method: 'POST',
            body: formData
        }).then(function(response) {
            return response.json();
        }).then(function(result) {
            return result.shareId;
        });
    }
    getSessionInfo (shareId) {
        return fetch(urlJoin(this.apiServer, 'collab-ws/session/', shareId)).then( response => {
            const sessionInfoJSON = response.headers.get('session-info');
            if(sessionInfoJSON === 'null' || !sessionInfoJSON) {
                return;
            } else {
                const sessionInfo = JSON.parse(decodeURIComponent(sessionInfoJSON));
                const openFileParams = sessionInfo.openFileParams;
                if(openFileParams.type === OPEN_FILE_TYPE.FROM_FILE) {
                    return response.blob().then(body => {
                        openFileParams.file = body;
                        return sessionInfo;
                    })
                } else {
                    return sessionInfo;
                }
            }
        })
    }
    send(shareId, data) {
        if(this.socket) {
            this.socket.send(data);
        }
        return Promise.resolve();
    }
    getLostData(shareId, fromVersion) {
        const url = urlJoin(this.apiServer, 'collab-ws', 'data', shareId, '' + fromVersion);
        return fetch(url)
            .then(function(response) {
                return response.json();
            });
    }
    registerMessageReceiver(receiver) {
        this.messageReceiver = receiver;
    }
    registerLostConnectionListener(callback) {
        this.closeEventListener = callback;
    }
    destroy() {
        if(this.socket) {
            this.socket.close();
        }
    }
}