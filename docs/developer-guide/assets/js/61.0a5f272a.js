(window.webpackJsonp=window.webpackJsonp||[]).push([[61],{615:function(t,s,a){"use strict";a.r(s);var e=a(63),n=Object(e.a)({},(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("ContentSlotsDistributor",{attrs:{"slot-key":t.$parent.slotKey}},[a("h1",{attrs:{id:"customize-internationalization-resources"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#customize-internationalization-resources"}},[t._v("#")]),t._v(" Customize Internationalization Resources")]),t._v(" "),a("h2",{attrs:{id:"assumption"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#assumption"}},[t._v("#")]),t._v(" Assumption")]),t._v(" "),a("p",[t._v("Assume you have an "),a("code",[t._v("assets/")]),t._v("in your website root directory, where you will configure the internationalization resources. Let's call this path as "),a("code",[t._v("websiteRoot/assets/")]),t._v(".")]),t._v(" "),a("h2",{attrs:{id:"configuration"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#configuration"}},[t._v("#")]),t._v(" Configuration")]),t._v(" "),a("ol",[a("li",[a("p",[t._v("Copy "),a("code",[t._v("lib/locals")]),t._v(" inside SDK to "),a("code",[t._v("websiteRoot/assets/")]),t._v(".")])]),t._v(" "),a("li",[a("p",[t._v("Set up the I18N path for loading resources.")]),t._v(" "),a("div",{staticClass:"language-js extra-class"},[a("pre",{pre:!0,attrs:{class:"language-js"}},[a("code",[a("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("new")]),t._v(" "),a("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("UIExtension"),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("PDFUI")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    i18n"),a("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n        absolutePath"),a("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),a("span",{pre:!0,attrs:{class:"token string"}},[t._v("'websiteRoot/assets/locals'")]),t._v("\n    "),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n    "),a("span",{pre:!0,attrs:{class:"token comment"}},[t._v("// the other options...")]),t._v("\n"),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(";")]),t._v("\n")])])])]),t._v(" "),a("li",[a("p",[t._v("Add more localization languages\nCreate a new folder in "),a("code",[t._v("websiteRoot/assets/locals")]),t._v(". The folder name should follow the language codes standard, such as zh-CN for Chinese. And then new a file and name it as "),a("code",[t._v("ui_.json")]),t._v(".")])]),t._v(" "),a("li",[a("p",[t._v("Set up default language")]),t._v(" "),a("div",{staticClass:"language-js extra-class"},[a("pre",{pre:!0,attrs:{class:"language-js"}},[a("code",[a("span",{pre:!0,attrs:{class:"token keyword"}},[t._v("new")]),t._v(" "),a("span",{pre:!0,attrs:{class:"token class-name"}},[t._v("UIExtension"),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(".")]),t._v("PDFUI")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("(")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n    i18n"),a("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("{")]),t._v("\n        absolutePath"),a("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),a("span",{pre:!0,attrs:{class:"token template-string"}},[a("span",{pre:!0,attrs:{class:"token template-punctuation string"}},[t._v("`")]),a("span",{pre:!0,attrs:{class:"token string"}},[t._v("websiteRoot/assets/locals")]),a("span",{pre:!0,attrs:{class:"token template-punctuation string"}},[t._v("`")])]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(",")]),t._v("\n        lng"),a("span",{pre:!0,attrs:{class:"token operator"}},[t._v(":")]),t._v(" "),a("span",{pre:!0,attrs:{class:"token string"}},[t._v("'zh-CN'")]),t._v("\n    "),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),t._v("，\n    "),a("span",{pre:!0,attrs:{class:"token comment"}},[t._v("// the other options")]),t._v("\n"),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v("}")]),a("span",{pre:!0,attrs:{class:"token punctuation"}},[t._v(")")]),t._v("\n")])])])])]),t._v(" "),a("h2",{attrs:{id:"verify-the-configuration-in-developer-environment"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#verify-the-configuration-in-developer-environment"}},[t._v("#")]),t._v(" Verify the configuration in developer environment")]),t._v(" "),a("ol",[a("li",[t._v("Clear your browser caches to ensure the latest I18N resources will be loaded.")]),t._v(" "),a("li",[t._v("Refresh your browser, open the Network panel in DevTools,and check if the "),a("code",[t._v("ui_.json")]),t._v(" request url points your custom language path. If so, it means success.")])])])}),[],!1,null,null,null);s.default=n.exports}}]);