<webpdf @aria:circular-focus>
    <toolbar name="toolbar" class="fv__ui-toolbar-scrollable">
        <div class="fv__ui-tab-nav" name="toolbar-tabs" @alt.menu=">::activated()" @aria:toolbar.tablist>
            <gtab name="home-tab" group="toolbar-tab" body="fv--home-tab-paddle" text="toolbar.tabs.home.title" @aria:toolbar.tab active @portfolio.deactive></gtab>
            <gtab name="edit-tab" group="toolbar-tab" body="fv--edit-tab-paddle" text="toolbar.tabs.edit.title" @hide-on-sr @device="desktop" @aria:toolbar.tab @collab-unsupported @portfolio.unsupport></gtab>
            <gtab name="comment-tab" group="toolbar-tab" body="fv--comment-tab-paddle" text="toolbar.tabs.comment.title" @aria:toolbar.tab @portfolio.unsupport></gtab>
            <gtab name="view-tab" group="toolbar-tab" body="fv--view-tab-paddle" text="toolbar.tabs.view.title" @aria:toolbar.tab></gtab>
            <gtab name="form-tab" group="toolbar-tab" body="fv--form-tab-paddle" text="toolbar.tabs.form.title" @aria:toolbar.tab @hide-on-sr @device="desktop" @collab-unsupported @portfolio.unsupport></gtab>
            <gtab name="protect-tab" group="toolbar-tab" body="fv--protect-tab-paddle" text="toolbar.tabs.protect.title" @aria:toolbar.tab @hide-on-sr @collab-unsupported @portfolio.unsupport></gtab>
            <gtab name="portfolio-tab" group="toolbar-tab" body="fv--portfolio-tab-body" text="toolbar.tabs.portfolio.title" @aria:toolbar.tab @collab-unsupported @hide-on-sr @portfolio.show @portfolio.active></gtab>
            <search:search-bar name="fv--search-bar"></search:search-bar>
        </div>
        <div class="fv__ui-toolbar-tab-bodies" name="toolbar-tab-bodies">
            <paddle name="fv--view-tab-paddle" @portfolio.unsupport @aria:toolbar.tabpanel visible="false" @lazy.idle>
                <group-list name="view-toolbar-group-list">
                    <group name="home-tab-group-hand" retain-count="3">
                        <hand-ribbon-button @aria:auto-focus></hand-ribbon-button>
                        <selection-ribbon-dropdown></selection-ribbon-dropdown>
                        <zoom-ribbon-dropdown></zoom-ribbon-dropdown>
                    </group>
                    <group name="view-tab-group-assistants" @hide-on-sr>
                        <marquee-tool-button></marquee-tool-button>
                        <loupe-tool-button></loupe-tool-button>
                    </group>
                    <group name="view-tab-group-read-aloud" @hide-on-sr @require-modules="read-aloud" retain-count="4">
                        <read-aloud:read-aloud-ribbon-dropdown></read-aloud:read-aloud-ribbon-dropdown>
                    </group>
                </group-list>
            </paddle>
            <paddle exclude-devices="tablet" name="fv--home-tab-paddle" @portfolio.unsupport @aria:toolbar>
                <group-list name="home-toolbar-group-list">
                    <group name="home-tab-group-hand" retain-count="3">
                        <hand-ribbon-button></hand-ribbon-button>
                        <selection-ribbon-dropdown></selection-ribbon-dropdown>
                        <snapshot-ribbon-button @hide-on-sr></snapshot-ribbon-button>
                    </group>
                    <group name="home-tab-group-io" retain-count="1" shrink-title="toolbar.more.document.title">
                        <open-file-ribbon-dropdown></open-file-ribbon-dropdown>
                        <download-file-ribbon-button></download-file-ribbon-button>
                        <print:print-ribbon-button></print:print-ribbon-button>
                    </group>
                    <group name="home-tab-group-zoom">
                        <zoom-out-ribbon-button></zoom-out-ribbon-button>
                        <zoom-in-ribbon-button></zoom-in-ribbon-button>
                        <editable-zoom-dropdown></editable-zoom-dropdown>
                    </group>
                    <group name="home-tab-group-change-color" @hide-on-sr>
                        <change-color-ribbon-dropdown></change-color-ribbon-dropdown>
                    </group>
                    <group name="home-tab-group-nav" retain-count="3">
                        <goto-first-page-button></goto-first-page-button>
                        <goto-prev-page-button></goto-prev-page-button>
                        <goto-page-input></goto-page-input>
                        <goto-next-page-button></goto-next-page-button>
                        <goto-last-page-button></goto-last-page-button>
                    </group>
                    <group name="home-tab-group-page" retain-count="1">
                        <div class="fx-ribbon-items-sm">
                            <single-page-ribbon-button></single-page-ribbon-button>
                            <continuous-page-ribbon-button></continuous-page-ribbon-button>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <facing-page-ribbon-button></facing-page-ribbon-button>
                            <continuous-facing-page-ribbon-button></continuous-facing-page-ribbon-button>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <h-continuous:h-continuous-ribbon-button></h-continuous:h-continuous-ribbon-button>
                        </div>
                        <!--<h-single:h-single-button></h-single:h-single-button>-->
                        <!--<h-facing:h-facing-button></h-facing:h-facing-button>-->
                    </group>
                    <group name="file-property" @require-modules="fpmodule">
                        <fpmodule:file-property-ribbon-button></fpmodule:file-property-ribbon-button>
                    </group>
                </group-list>
            </paddle>
            <paddle exclude-devices="tablet" name="fv--comment-tab-paddle" @portfolio.unsupport @aria:toolbar visible="false" @lazy.idle>
                <group-list name="comment-toolbar-group-list">
                    <group name="comment-tab-group-hand" retain-count="3">
                        <hand-ribbon-button></hand-ribbon-button>
                        <selection-ribbon-dropdown></selection-ribbon-dropdown>
                        <zoom-ribbon-dropdown></zoom-ribbon-dropdown>
                    </group>
                    <group name="comment-tab-group-note" retain-count="3">
                        <create-note-ribbon-button></create-note-ribbon-button>
                    </group>
                    <group name="comment-tab-group-mark">
                        <div class="fx-ribbon-items-sm">
                            <create-text-highlight-ribbon-button small="true"></create-text-highlight-ribbon-button>
                            <create-strikeout-ribbon-button small="true"></create-strikeout-ribbon-button>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <create-underline-ribbon-button small="true"></create-underline-ribbon-button>
                            <create-squiggly-ribbon-button small="true"></create-squiggly-ribbon-button>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <create-replace-ribbon-button small="true"></create-replace-ribbon-button>
                            <create-caret-ribbon-button small="true"></create-caret-ribbon-button>
                        </div>
                    </group>
                    <group name="comment-tab-group-text">
                        <create-typewriter-ribbon-button></create-typewriter-ribbon-button>
                        <create-callout-ribbon-button></create-callout-ribbon-button>
                        <create-textbox-ribbon-button></create-textbox-ribbon-button>
                    </group>
                    <group name="comment-tab-group-drawing" retain-count="2">
                        <create-drawings-ribbon-dropdown></create-drawings-ribbon-dropdown>
                        <create-area-highlight-ribbon-button></create-area-highlight-ribbon-button>
                    </group>
                    <group name="comment-tab-group-pencil" retain-count="2">
                        <create-pencil-ribbon-button></create-pencil-ribbon-button>
                        <eraser-ribbon-button></eraser-ribbon-button>
                    </group>
                    <group name="comment-tab-group-stamp">
                        <stamp-ribbon-dropdown></stamp-ribbon-dropdown>
                        <stamp-create-ribbon-dropdown></stamp-create-ribbon-dropdown>
                    </group>
                    <group name="comment-tab-group-measurement">
                        <create-measure-ribbon-dropdown></create-measure-ribbon-dropdown>
                    </group>
                    <group name="comment-tab-group-import-export">
                        <comment-list:import-comment-ribbon-button></comment-list:import-comment-ribbon-button>
                        <div class="export-comment-dropdown-item" name="export-comment-dropdown-container">
                            <comment-list:export-comment-ribbon-dropdown></comment-list:export-comment-ribbon-dropdown>
                        </div>
                    </group>
                    <group name="comment-tab-group-inksign" visible='false'></group>
                    <group name="comment-tab-group-other" visible='false'></group>
                </group-list>
            </paddle>
            <paddle exclude-devices="tablet" name="fv--edit-tab-paddle" @portfolio.unsupport @aria:toolbar visible="false" @lazy.idle>
                <group-list name="edit-toolbar-group-list">
                    <group name="edit-tab-group-hand" retain-count="3">
                        <hand-ribbon-button></hand-ribbon-button>
                        <selection-ribbon-dropdown></selection-ribbon-dropdown>
                        <zoom-ribbon-dropdown></zoom-ribbon-dropdown>
                    </group>
                    <group name="edit-tab-group-mode" retain-count="3">
                        <edit-pageobjects:edit-all-objects-button @async></edit-pageobjects:edit-all-objects-button>
                        <add-image-ribbon-button></add-image-ribbon-button>
                        <!--<edit-image-button></edit-image-button>-->
                        <edit-text-object:add-text-ribbon-button  @async></edit-text-object:add-text-ribbon-button>
                        <edit-pageobjects:path-objects-ribbon-dropdown @async></edit-pageobjects:path-objects-ribbon-dropdown>
                    </group>
                    <group name="edit-tab-group-font" retain-count="5" @require-modules="edit-text-object">
                        <edit-text-object:text-bold-style-ribbon-button></edit-text-object:text-bold-style-ribbon-button>
                        <edit-text-object:text-italic-style-ribbon-button></edit-text-object:text-italic-style-ribbon-button>
                        <edit-text-object:font-color-picker></edit-text-object:font-color-picker>
                        <edit-text-object:font-style-dropdown></edit-text-object:font-style-dropdown>
                    </group>
                    <group name="comment-tab-group-media" @grp-more-hide-on-sr>
                        <create-link-ribbon-button @hide-on-sr  @collab-unsupported></create-link-ribbon-button>
                        <create-attachment-ribbon-button></create-attachment-ribbon-button>
                        <create-image-ribbon-button @hide-on-sr  @collab-unsupported></create-image-ribbon-button>
                        <multi-media:multi-media-ribbon-button @hide-on-sr  @collab-unsupported></multi-media:multi-media-ribbon-button>
                    </group>
                    <group name="edit-tab-group-layer" visible="false"></group>
                    <group name="edit-tab-group-redact" visible="false"></group>
                </group-list>
            </paddle>
            <paddle exclude-devices="tablet" name="fv--form-tab-paddle" @portfolio.unsupport @aria:toolbar visible="false" @lazy.idle>
                <group-list name="form-toolbar-group-list">
                    <group name="form-tab-group-hand" retain-count="3">
                        <hand-ribbon-button></hand-ribbon-button>
                        <selection-ribbon-dropdown></selection-ribbon-dropdown>
                        <zoom-ribbon-dropdown></zoom-ribbon-dropdown>
                    </group>
                    <group name="form-tab-group-assistants" @require-modules.oneOf="recognition-form,form-designer">
                        <recognition-form:recognition-form-ribbon-button></recognition-form:recognition-form-ribbon-button>
                        <form-designer:assistant-button name="fv--form-designer-assistant"></form-designer:assistant-button>
                    </group>
                    <group name="form-tab-group-fields" retain-count="2" @require-modules="form-designer">
                        <div class="fx-ribbon-items-sm">
                            <form-designer:create-push-button-ribbon small="true"></form-designer:create-push-button-ribbon>
                            <form-designer:create-check-box-ribbon small="true"></form-designer:create-check-box-ribbon>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <form-designer:create-radio-button-ribbon small="true"></form-designer:create-radio-button-ribbon>
                            <form-designer:create-combo-box-ribbon small="true"></form-designer:create-combo-box-ribbon>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <form-designer:create-list-box-ribbon small="true"></form-designer:create-list-box-ribbon>
                            <form-designer:create-text-ribbon small="true"></form-designer:create-text-ribbon>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <form-designer:create-sign-ribbon small="true"></form-designer:create-sign-ribbon>
                            <form-designer:create-image-ribbon small="true"></form-designer:create-image-ribbon>
                        </div>
                        <div class="fx-ribbon-items-sm">
                            <form-designer:create-date-ribbon small="true"></form-designer:create-date-ribbon>
                        </div>
                    </group>
                    <group name="form-tab-group-tools" retain-count="2" @require-modules.oneOf="form-designer,xfa-form-module,page-template">
                        <page-template:page-template-ribbon-button @async></page-template:page-template-ribbon-button>
                        <xfa-form-module:xfa-form-button @async></xfa-form-module:xfa-form-button>
                        <form-designer:showCO @async></form-designer:showCO>
                        <form-designer:add-tooltip @async></form-designer:add-tooltip>
                        <form-designer:highlight-fields-checkbox @async></form-designer:highlight-fields-checkbox>
                    </group>
                    <group name="form-tab-group-import-export" retain-count="3" @require-modules.oneOf="form-designer,import-form-module,export-form-module,form-to-sheet-module">
                        <form-designer:reset-form @async></form-designer:reset-form>
                        <form-to-sheet-module:form-to-sheet-ribbon-dropdown name="form-to-sheet" @async></form-to-sheet-module:form-to-sheet-ribbon-dropdown>
                        <import-form-module:import-form-ribbon-button @async></import-form-module:import-form-ribbon-button>
                        <export-form-module:export-form-ribbon-dropdown @async name="fv--export-form-dropdown" not-immediately="true"></export-form-module:export-form-ribbon-dropdown>
                        <form-designer:keep-tool-selected-checkbox @async></form-designer:keep-tool-selected-checkbox>
                    </group>
                </group-list>
            </paddle>
            <paddle exclude-devices="tablet" name="fv--protect-tab-paddle" @portfolio.unsupport @aria:toolbar visible="false" @lazy.idle>
                <group-list name="protect-toolbar-group-list">
                    <group name="protect-tab-group-hand" retain-count="4">
                        <hand-ribbon-button></hand-ribbon-button>
                        <selection-ribbon-dropdown></selection-ribbon-dropdown>
                        <zoom-ribbon-dropdown></zoom-ribbon-dropdown>
                    </group>
                    <group name="protect-tab-group-sign" retain-count="4">
                        <ink-sign-ribbon-dropdown name="fv--ink-sign-dropdown"></ink-sign-ribbon-dropdown>
                    </group>
                    <group name="redaction" functional-module="redaction" @license-validation @require-modules="redaction">
                        <redaction:create-redactions-ribbon-dropdown></redaction:create-redactions-ribbon-dropdown>
                        <redaction:apply-redactions-ribbon-button></redaction:apply-redactions-ribbon-button>
                        <redaction:redaction-search-ribbon-button></redaction:redaction-search-ribbon-button>
                    </group>
                    <group name="password-protect-group" retain-count="2" @require-modules="password-protect">
                        <password-protect:password-protect-ribbon-dropdown></password-protect:password-protect-ribbon-dropdown>
                    </group>
                </group-list>
            </paddle>
            <paddle name="fv--portfolio-tab-body" @portfolio.support @aria:toolbar visible="false" @lazy>
                <group-list name="portfolio-toolbar-group-list" >
                    <group name="portfolio-tab-group-layout-buttons" retain-count="5">
                        <portfolio-block-layout-ribbon-button></portfolio-block-layout-ribbon-button>
                        <portfolio-details-layout-ribbon-button></portfolio-details-layout-ribbon-button>
                        <portfolio-cover-sheet-layout-ribbon-button></portfolio-cover-sheet-layout-ribbon-button>
                        <ribbon-button @var.self="$component" @portfolio-component not-immediately="true">
                            <portfolio-preview-side-dropdown @on.selected="self.select($args[0])" selected="0" text="portfolio.toolbar.preview-pane">
                                <portfolio-preview-right-side-button ribbon-icon="fv__icon-portfolio-preview-side" ribbon-text="portfolio.toolbar.preview-pane"></portfolio-preview-right-side-button>
                                <portfolio-preview-bottom-side-button ribbon-icon="fv__icon-portfolio-preview-side" ribbon-text="portfolio.toolbar.preview-pane"></portfolio-preview-bottom-side-button>
                                <portfolio-preview-off-button ribbon-icon="fv__icon-portfolio-preview-side" ribbon-text="portfolio.toolbar.preview-pane"></portfolio-preview-off-button>
                            </portfolio-preview-side-dropdown>
                        </ribbon-button>
                        <ribbon-button @var.self="$component" not-immediately="true" @portfolio-component>
                            <portfolio-default-layout-dropdown @on.selected="self.select($args[0])" selected="0" text="portfolio.toolbar.default-view">
                                <portfolio-default-original-layout-button ribbon-icon="fv__icon-portfolio-default-layout" ribbon-text="portfolio.toolbar.default-view"></portfolio-default-original-layout-button>
                                <portfolio-default-block-layout-button ribbon-icon="fv__icon-portfolio-default-layout" ribbon-text="portfolio.toolbar.default-view"></portfolio-default-block-layout-button>
                                <portfolio-default-details-layout-button ribbon-icon="fv__icon-portfolio-default-layout" ribbon-text="portfolio.toolbar.default-view"></portfolio-default-details-layout-button>
                                <portfolio-default-cover-sheet-layout-button ribbon-icon="fv__icon-portfolio-default-layout" ribbon-text="portfolio.toolbar.default-view"></portfolio-default-cover-sheet-layout-button>
                            </portfolio-default-layout-dropdown>
                        </ribbon-button>
                    </group>
                </group-list>
            </paddle>
        </div>
    </toolbar>
    <div class="fv__ui-body">
        <sidebar name="sidebar" @controller="sidebar:SidebarController" @portfolio-layout="cover">
            <bookmark-sidebar-panel></bookmark-sidebar-panel>
            <thumbnail-sidebar-panel @require-modules="thumbnail"></thumbnail-sidebar-panel>
            <commentlist-sidebar-panel></commentlist-sidebar-panel>
            <layer-sidebar-panel @hide-on-sr></layer-sidebar-panel>
            <attachment-sidebar-panel></attachment-sidebar-panel>
            <field-sidebar-panel @require-modules="form-designer" @display-on-device="desktop" @collab-unsupported></field-sidebar-panel>
        </sidebar>
        <portfolio-container>
            <portfolio-sidebar @portfolio-layout="portfolio,details" @lazy-content="portfolio-layout-shown">
                <portfolio-sidebar-header>
                    <portfolio-path></portfolio-path>
                    <portfolio-toolbar>
                        <portfolio-extract-selected-item-button></portfolio-extract-selected-item-button>
                        <portfolio-show-node-properties-button></portfolio-show-node-properties-button>
                    </portfolio-toolbar>
                </portfolio-sidebar-header>
                <portfolio-node-container>
                    <div class="fv__ui-portfolio-node-tree" @controller="PortfolioNodeTreeController as tree">
                        <portfolio-details-header @portfolio-layout="details" @sync.columns="tree.columns"></portfolio-details-header>
                        <portfolio-node-list>
                            <portfolio-node
                                @foreach.cached = "fileNode in tree.fileNodes track by handle"
                                @sync.display = "tree.display"
                                @sync.data = "fileNode"
                                @sync.columns="tree.columns"
                                @contextmenu="fv--portfolio-file-item-contextmenu"
                            ></portfolio-node>
                        </portfolio-node-list>
                    </div>
                </portfolio-node-container>
            </portfolio-sidebar>
            <div name="fv--portfolio-previewer-container" class="fv__ui-portfolio-previewer-container">
                <!-- previewers -->
                <distance:ruler-container name="pdf-viewer-container-with-ruler" @portfolio-cover-sheet>
                    <slot>
                        <viewer
                            @zoom-on-pinch
                            @zoom-on-doubletap
                            @zoom-on-wheel
                            @touch-to-scroll
                            @alt.main=":::css(`.fv__pdf-viewer-container`)"
                        ></viewer>
                    </slot>
                </distance:ruler-container>
                <portfolio-previewer-group @portfolio-layout="portfolio,details" @lazy-content="portfolio-layout-shown">
                    <portfolio-unsupported-previewer></portfolio-unsupported-previewer>
                    <portfolio-pdf-previewer></portfolio-pdf-previewer>
                    <portfolio-video-previewer></portfolio-video-previewer>
                    <portfolio-audio-previewer></portfolio-audio-previewer>
                    <portfolio-image-previewer></portfolio-image-previewer>
                    <portfolio-plain-text-previewer></portfolio-plain-text-previewer>
                </portfolio-previewer-group>
                <portfolio-loading-layer></portfolio-loading-layer>
            </div>
        </portfolio-container>
        <sidebar-right min-width="300" max-width="360" name="sidebar-right" @lazy-content="shown">
            <sidebar-tabs name="sidebar-right-tabs">
                <sidebar-tab-panel name="edit-properties-panel" tab-title="editProperties.tab.format">
                    <edit-properties:edit-properties name="edit-properties"></edit-properties:edit-properties>
                </sidebar-tab-panel>
                <sidebar-tab-panel name="right-search-panel" tab-title="editProperties.tab.search">
                    <search:advanced-search name="advanced-search"></search:advanced-search>
                </sidebar-tab-panel>
            </sidebar-tabs>
        </sidebar-right>
    </div>
    <template name="template-container">
        <create-stamp-dialog @lazy></create-stamp-dialog>
        <print:print-dialog @lazy></print:print-dialog>
        <page-template:page-template-dialog @lazy></page-template:page-template-dialog>
        <loupe-tool-dialog @lazy></loupe-tool-dialog>
        <create-ink-sign-dialog @lazy></create-ink-sign-dialog>
        <distance:measurement-popup @lazy></distance:measurement-popup>
        <fpmodule:file-property-dialog @lazy></fpmodule:file-property-dialog>
        <redaction:redaction-page-dialog @hide-on-sr @lazy></redaction:redaction-page-dialog>
        <!-- contextmenus -->
        <page-contextmenu></page-contextmenu>
        <default-annot-contextmenu @lazy></default-annot-contextmenu>
        <markup-contextmenu @lazy></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--line-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--linearrow-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--linedimension-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--polylinedimention-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--polygondimension-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--circle-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--square-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--polyline-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--polygon-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--polygoncloud-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--ink-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--stamp-contextmenu"></markup-contextmenu>
        <markup-contextmenu @lazy name="fv--text-contextmenu"></markup-contextmenu>
        <caret-contextmenu name="fv--areahighlight-contextmenu" @lazy></caret-contextmenu>
        <caret-contextmenu name="fv--replace-contextmenu" @lazy></caret-contextmenu>
        <measurement-contextmenu @lazy></measurement-contextmenu>
        <caret-contextmenu name="fv--caret-contextmenu"></caret-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--highlight-contextmenu"></textmarkup-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--strikeout-contextmenu"></textmarkup-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--underline-contextmenu"></textmarkup-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--squiggly-contextmenu"></textmarkup-contextmenu>
        <freetext-contextmenu @lazy name="fv--typewriter-contextmenu"></freetext-contextmenu>
        <freetext-contextmenu @lazy name="fv--callout-contextmenu"></freetext-contextmenu>
        <freetext-contextmenu @lazy name="fv--textbox-contextmenu"></freetext-contextmenu>
        <action-annot-contextmenu @lazy name="fv--image-contextmenu"></action-annot-contextmenu>
        <action-annot-contextmenu @lazy name="fv--link-contextmenu"></action-annot-contextmenu>
        <comment-card-contextmenu @lazy ></comment-card-contextmenu>
        <fileattachment-contextmenu @lazy></fileattachment-contextmenu>
        <media-contextmenu @lazy ></media-contextmenu>
        <sound-contextmenu @lazy ></sound-contextmenu>
        <redact-contextmenu @lazy ></redact-contextmenu>
        <edit-graphics:image-contextmenu @lazy></edit-graphics:image-contextmenu>
        <edit-pageobjects:path-contextmenu @lazy></edit-pageobjects:path-contextmenu>
        <field-signature-contextmenu @lazy name="fv--field-signature-contextmenu"></field-signature-contextmenu>
        <text-sel:text-selection-tooltip @lazy></text-sel:text-selection-tooltip>
        <annottext name="fv--annottext-tooltip" @lazy></annottext>
        <!-- Field panel contentmenu -->
        <field-contextmenu @lazy></field-contextmenu>
        <comment-list:filter-dialog name="fv--commentlist-filter-comment-dialog"></comment-list:filter-dialog>
        <selected-text-contextmenu @lazy></selected-text-contextmenu>
        <selected-image-contextmenu @lazy></selected-image-contextmenu>
        <selected-rectangle-contextmenu @lazy></selected-rectangle-contextmenu>
        <search:basic-search-options name="fv--search-basic-options"></search:basic-search-options>
        <search:choose-search-type name="fv--search-choose-search-type"></search:choose-search-type>
        <portfolio-node-properties-dialog @lazy></portfolio-node-properties-dialog>
        <portfolio-node-contextmenu name="fv--portfolio-file-item-contextmenu" @lazy>
            <portfolio-extract-node-contextmenu-item name="fv--portfolio-extract-node-contextmenu-item"></portfolio-extract-node-contextmenu-item>
            <portfolio-show-selected-node-information-contextmenu-item name="fv--portfolio-show-selected-node-information-contextmenu-item"></portfolio-show-selected-node-information-contextmenu-item>
        </portfolio-node-contextmenu>
        <bookmark-contextmenu @lazy></bookmark-contextmenu>
        <signature:signed-property-dialog name="signed-property-dialog" @lazy></signature:signed-property-dialog>
        <thumbnail:thumbnail-contextmenu name="fv--thumbnail-contextmenu" @lazy></thumbnail:thumbnail-contextmenu>
        <edit-graphics:graphic-object-properties-dialog name="fv--graphics-object-properties-dialog" @lazy></edit-graphics:graphic-object-properties-dialog>
    </template>
</webpdf>