(window.webpackJsonp=window.webpackJsonp||[]).push([[43],{577:function(t,a,s){"use strict";s.r(a);var n=s(63),e=Object(n.a)({},(function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("ContentSlotsDistributor",{attrs:{"slot-key":t.$parent.slotKey}},[s("h1",{attrs:{id:"introduction-to-addons"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#introduction-to-addons"}},[t._v("#")]),t._v(" Introduction to addons")]),t._v(" "),s("p",[t._v("In the "),s("a",{attrs:{href:"/lib/uix-addons"}},[t._v("/lib/uix-addons")]),t._v(" directory, Foxit PDF SDK for Web provides a set of rich addons that can be freely combined. The following structure lists the currently supported addons. Each addon can be loaded individually or in combination as needed.")]),t._v(" "),s("div",{staticClass:"language-txt extra-class"},[s("pre",{pre:!0,attrs:{class:"language-txt"}},[s("code",[t._v("uix-addons\n    ├── aria                    ----- Make components support ARIA standards\n    ├── edit-graphics           ----- Edit page objects\n    ├── export-form             ----- Export form\n    ├── file-property           ----- Used to display PDF file \n    ├── form-designer           ----- Provides form editing function\n    ├── form-to-sheet           ----- Provides functionality for form-to-sheet conversion\n    ├── full-screen             ----- Full screen\n    ├── h-continuous            ----- Horizontal continuous page mode\n    ├── h-facing                ----- Horizontal facing mode for the cover\n    ├── h-single                ----- Horizontal single page mode\n    ├── import-form             ----- Import form\n    ├── javascript-form         ----- Add, modify and test JavaScript within the document\n    ├── manage-comments         ----- Provides a series of functions to control the list of comments\n    ├── multi-media             ----- Provides the function of adding audio and video annotations\n    ├── page-template           ----- Provides the function of editing page templates\n    ├── password-protect        ----- Password protection\n    ├── path-objects            ----- Edit path objects\n    ├── print                   ----- Print PDF pages function\n    ├── range-input             ----- Provides range-input component.\n    ├── read-aloud              ----- Read aloud UI components\n    ├── recognition-form        ----- Form field recognition\n    ├── redaction               ----- Redaction\n    ├── search                  ----- Text search function\n    ├── text-object             ----- Edit text objects\n    ├── thumbnail               ----- Provides the function of thumbnail sidebar\n    ├── undo-redo               ----- Undo and redo\n    ├── xfa-form                ----- Provides the function of editing static XFA form\n    ├── allInOne.js             ----- Collection of all add-ons\n    └── allInOne.mobile.js      ----- Collection of all add-ons that support mobile\n")])])]),s("h2",{attrs:{id:"dependency-hierarchy"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#dependency-hierarchy"}},[t._v("#")]),t._v(" Dependency Hierarchy")]),t._v(" "),s("p",[t._v("In order to avoid repeating registration and execution of the same functions in different addons, the functions will be extracted into separate addons, and then passively loaded as dependencies.")]),t._v(" "),s("div",{staticClass:"language-text extra-class"},[s("pre",{pre:!0,attrs:{class:"language-text"}},[s("code",[t._v("edit-graphics\n    ├── path-objects\n    └── text-object\n")])])]),s("p",[t._v("When the application loads "),s("code",[t._v("path-objects")]),t._v(" or "),s("code",[t._v("text-object")]),t._v(", "),s("code",[t._v("edit-graphics")]),t._v(" will also be loaded and only loaded once.")]),t._v(" "),s("h2",{attrs:{id:"load-addons"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#load-addons"}},[t._v("#")]),t._v(" Load Addons")]),t._v(" "),s("h3",{attrs:{id:"load-addons-individually"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#load-addons-individually"}},[t._v("#")]),t._v(" Load addons individually")]),t._v(" "),s("p",[t._v("You can load all available addons or a few specific addons individually.")]),t._v(" "),s("p",[s("strong",[t._v("Code Example:")])]),t._v(" "),s("div",{staticClass:"language-html extra-class"},[s("pre",{pre:!0,attrs:{class:"language-html"}},[s("code",[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token attr-name"}},[t._v("src")]),s("span",{pre:!0,attrs:{class:"token attr-value"}},[s("span",{pre:!0,attrs:{class:"token punctuation attr-equals"}},[t._v("=")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')]),t._v("path/to/UIExtension.full.js"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')])]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}}),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}},[s("span",{pre:!0,attrs:{class:"token language-javascript"}},[t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("var")]),t._v(" pdfui "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("new")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("UIExtension"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("PDFUI")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("...")]),t._v("\n    addons"),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("[")]),t._v("\n        "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v('"path/to/customized-addon/addon.info.json"')]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n        "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v('"path/to/lib/multi-media/addon.info.json"')]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n        "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("...")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("]")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("...")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),t._v("\n")])]),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n")])])]),s("p",[t._v("The file "),s("code",[t._v("/examples/UIExtension/complete_webViewer/index.html")]),t._v(" also provides an example to show how to load all addons individually.")]),t._v(" "),s("h3",{attrs:{id:"load-addons-in-combination"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#load-addons-in-combination"}},[t._v("#")]),t._v(" Load addons in combination")]),t._v(" "),s("p",[t._v("In the network environment, downloading too many addons would increase the HTTP requests. To minimize the number of HTTP requests, you may prefer loading all addons in a single file. We provide a script file "),s("code",[t._v("allInOne.js")]),t._v("which is a combination of all addons. Besides, you can use our "),s("a",{attrs:{href:"#merge-addons"}},[t._v("merge addons tools")]),t._v(" to tailor addons.")]),t._v(" "),s("h2",{attrs:{id:"the-addon-s-structure"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#the-addon-s-structure"}},[t._v("#")]),t._v(" The addon's structure")]),t._v(" "),s("h3",{attrs:{id:"the-entry-file-addon-info-json"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#the-entry-file-addon-info-json"}},[t._v("#")]),t._v(" The entry file -- addon.info.json")]),t._v(" "),s("p",[t._v("The "),s("code",[t._v("addon.info.json")]),t._v(" is the addon entry file, which includes the addon's library name, i18n sources and css files.")]),t._v(" "),s("p",[s("strong",[t._v("Example:")])]),t._v(" "),s("div",{staticClass:"language-json extra-class"},[s("pre",{pre:!0,attrs:{class:"language-json"}},[s("code",[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token property"}},[t._v('"library"')]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v('"ExampleUIXAddon"')]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token property"}},[t._v('"i18n"')]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n        "),s("span",{pre:!0,attrs:{class:"token property"}},[t._v('"ns"')]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v('"example"')]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n        "),s("span",{pre:!0,attrs:{class:"token property"}},[t._v('"sources"')]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n            "),s("span",{pre:!0,attrs:{class:"token property"}},[t._v('"en-US"')]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v('"./locales/en-US.json"')]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n            "),s("span",{pre:!0,attrs:{class:"token property"}},[t._v('"zh-CN"')]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v('"./locales/zh-CN.json"')]),t._v("\n        "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token property"}},[t._v('"css"')]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("[")]),t._v("\n        "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v('"./index.css"')]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("]")]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("\n")])])]),s("h3",{attrs:{id:"the-i18n-sources"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#the-i18n-sources"}},[t._v("#")]),t._v(' The "i18n" sources')]),t._v(" "),s("p",[t._v('This item is used to configure localization. "ns" specifies namespace. "sources" specifies files.')]),t._v(" "),s("p",[t._v("After configuration, you can use "),s("code",[t._v("[i18n-namespace]:[i18n-key]")]),t._v(" to implement localization.")]),t._v(" "),s("p",[t._v('In the case below, i18n namespace is "example", "i18n-key" could be "toolbar.title", "dialog.title" or "buttons.addText"(Refer to zh-CN.json for details).')]),t._v(" "),s("div",{staticClass:"language-html extra-class"},[s("pre",{pre:!0,attrs:{class:"language-html"}},[s("code",[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("h6")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("example:dialog.title"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("h6")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n")])])]),s("p",[t._v("will be translated to")]),t._v(" "),s("div",{staticClass:"language-html extra-class"},[s("pre",{pre:!0,attrs:{class:"language-html"}},[s("code",[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("h6")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("Dialog title"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("h6")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n")])])]),s("p",[t._v("and")]),t._v(" "),s("div",{staticClass:"language-html extra-class"},[s("pre",{pre:!0,attrs:{class:"language-html"}},[s("code",[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("h6")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("对话框标题 Dialog title"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("h6")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n")])])]),s("h3",{attrs:{id:"the-css-field"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#the-css-field"}},[t._v("#")]),t._v(' The "css" field')]),t._v(" "),s("p",[t._v('This item specifies style sheets("index.css" is the output of style-loader).  Currently only CSS is supported.')]),t._v(" "),s("h2",{attrs:{id:"allinone-js"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#allinone-js"}},[t._v("#")]),t._v(" allInOne.js")]),t._v(" "),s("p",[t._v("The "),s("code",[t._v("allInOne.js")]),t._v(" is a script file that contains all currently supported addons. It is provided for your convenience to load addons in a combination way. This file is only for PC. If you want it for mobile, you should rebuild it to cut out the feature "),s("code",[t._v("editTextObject")]),t._v(" which is unavailable in mobile.")]),t._v(" "),s("p",[t._v("You have two methods to build a custom addons")]),t._v(" "),s("ul",[s("li",[t._v("Use our "),s("a",{attrs:{href:"#merge-addons"}},[t._v("merge addons tools")]),t._v(" to merge desired addons, and output a new all-in-one addons' file.")]),t._v(" "),s("li",[t._v("Use the "),s("code",[t._v("UIXAddons(UIExtension).filter")]),t._v("to dynamically detach an addon from "),s("code",[t._v("allInOne.js")]),t._v(" and load it. Check out "),s("a",{attrs:{href:"#loading-custom-addinone.js"}},[t._v("Loading custom addInOne.js")])])]),t._v(" "),s("h3",{attrs:{id:"load-allinone-js"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#load-allinone-js"}},[t._v("#")]),t._v(" Load allInOne.js")]),t._v(" "),s("div",{staticClass:"language-html extra-class"},[s("pre",{pre:!0,attrs:{class:"language-html"}},[s("code",[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token attr-name"}},[t._v("src")]),s("span",{pre:!0,attrs:{class:"token attr-value"}},[s("span",{pre:!0,attrs:{class:"token punctuation attr-equals"}},[t._v("=")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')]),t._v("path/to/UIExtension.full.js"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')])]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}}),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token attr-name"}},[t._v("src")]),s("span",{pre:!0,attrs:{class:"token attr-value"}},[s("span",{pre:!0,attrs:{class:"token punctuation attr-equals"}},[t._v("=")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')]),t._v("path/to/allInOne.js"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')])]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}}),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}},[s("span",{pre:!0,attrs:{class:"token language-javascript"}},[t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("var")]),t._v(" pdfui "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("new")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("UIExtension"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("PDFUI")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("...")]),t._v("\n    addons"),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v("UIXAddons"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token comment"}},[t._v("// UIXAddons is the library name in allInOne.js")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("...")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),t._v("\n")])]),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n")])])]),s("h3",{attrs:{id:"loading-custom-addinone-js"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#loading-custom-addinone-js"}},[t._v("#")]),t._v(" Loading custom addInOne.js")]),t._v(" "),s("p",[t._v("The default "),s("code",[t._v("allInOne.js")]),t._v(" combines all currently supported addons into a single script.  You can detach the unwanted addon by "),s("code",[t._v("UIXAddons(UIExtension).filter")]),t._v(" and then load them to web viewer.")]),t._v(" "),s("div",{staticClass:"language-html extra-class"},[s("pre",{pre:!0,attrs:{class:"language-html"}},[s("code",[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token attr-name"}},[t._v("src")]),s("span",{pre:!0,attrs:{class:"token attr-value"}},[s("span",{pre:!0,attrs:{class:"token punctuation attr-equals"}},[t._v("=")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')]),t._v("path/to/UIExtension.full.js"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')])]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}}),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token attr-name"}},[t._v("src")]),s("span",{pre:!0,attrs:{class:"token attr-value"}},[s("span",{pre:!0,attrs:{class:"token punctuation attr-equals"}},[t._v("=")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')]),t._v("path/to/allInOne.js"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v('"')])]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}}),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n"),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("<")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),s("span",{pre:!0,attrs:{class:"token script"}},[s("span",{pre:!0,attrs:{class:"token language-javascript"}},[t._v("\n    UIXAddons "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("UIXAddons")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),t._v("UIExtension"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("filter")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token parameter"}},[t._v("addon")]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=>")]),t._v("addon"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),s("span",{pre:!0,attrs:{class:"token function"}},[t._v("getName")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("!=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token string"}},[t._v("'editTextObject'")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("var")]),t._v(" pdfui "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("=")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("new")]),t._v(" "),s("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("UIExtension"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("PDFUI")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("...")]),t._v("\n    addons"),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v("UIXAddons"),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token operator"}},[t._v("...")]),t._v("\n    "),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),t._v("\n")])]),s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token tag"}},[s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("</")]),t._v("script")]),s("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(">")])]),t._v("\n")])])]),s("h2",{attrs:{id:"merge-addons"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#merge-addons"}},[t._v("#")]),t._v(" Merge addons")]),t._v(" "),s("p",[t._v("If you want to merge addons by yourself or  rebuild "),s("code",[t._v("allInOne.js")]),t._v(" to merge your selected addons, you can use our merge addon tools "),s("code",[t._v("addon loader")]),t._v(" and "),s("code",[t._v("gulp plugin")]),t._v(". Check out the links below for details.")]),t._v(" "),s("ul",[s("li",[s("a",{attrs:{href:"https://www.npmjs.com/package/@foxitsoftware/addon-loader",target:"_blank",rel:"noopener noreferrer"}},[t._v("addon-loader for webpack"),s("OutboundLink")],1)]),t._v(" "),s("li",[s("a",{attrs:{href:"https://www.npmjs.com/package/@foxitsoftware/gulp-merge-addon",target:"_blank",rel:"noopener noreferrer"}},[t._v("addon merge tool for gulp"),s("OutboundLink")],1)])]),t._v(" "),s("p",[t._v("You can also refer to "),s("code",[t._v("/examples/UIExtension/use-merged-addon")]),t._v(" for usage.")]),t._v(" "),s("h2",{attrs:{id:"develop-custom-addons"}},[s("a",{staticClass:"header-anchor",attrs:{href:"#develop-custom-addons"}},[t._v("#")]),t._v(" Develop custom addons")]),t._v(" "),s("p",[t._v("The "),s("a",{attrs:{href:"/examples/UIExtension/scaffoldDemo/"}},[t._v("/examples/UIExtension/scaffoldDemo/")]),t._v(" is a scaffold project that contains an open source addon example. You may refer to the "),s("a",{attrs:{href:"/examples/UIExtension/scaffoldDemo/readme.md"}},[t._v("/examples/UIExtension/scaffoldDemo/readme.md")]),t._v(" file in that directory to start developing your own addons.")])])}),[],!1,null,null,null);a.default=e.exports}}]);