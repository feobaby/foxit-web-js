<webpdf>
    <div class="fv__ui-mobile-header" name="fv--mobile-header">
        <div class="fv__ui-mobile-header-left" name="fv--mobile-header-left">
            <mobile:sidebar-toggler-button name="fv--mobile-sidebar-tottler-button"></mobile:sidebar-toggler-button>
        </div>
        <div class="fv__ui-mobile-header-main" name="fv--mobile-header-main">
            <dropdown name="tabs" class="fv__ui-mobile-tabs-dropdown" @controller="mobile:MobileDropdownTabController as mtab" @on.click="mtab.toggleTab()">
                <li @on.click="mtab.switchTab($component)" name="comment-tab-li">
                    <gtab name="comment-tab" active group="mobile-tab" body="comment-tab-body" text="toolbar.tabs.comment.title"></gtab>
                </li>
                <li @on.click="mtab.switchTab($component)" name="protect-tab-li" @hide-on-sr @collab-unsupported>
                    <gtab name="protect-tab" group="mobile-tab" body="protect-tab-body" text="toolbar.tabs.protect.title"></gtab>
                </li>
            </dropdown>
        </div>
        <div class="fv__ui-mobile-header-right" name="fv--mobile-header-right">
            <xbutton tooltip-title="toolbar.tooltip.hand.title" @tooltip name="hand-tool" icon-class="fv__icon-mobile-topbar-hand" @controller="states:HandController"></xbutton>
            <change-color-dropdown></change-color-dropdown>
            <mobile:pageview-dropdown name="fv--mobile-pageview-dropdown" @selectable-dropdown="1">
                <xbutton @tooltip tooltip-title="toolbar.tools.single-page" @controller="pagemode:SinglePageModeController" name="single-page" icon-class="fv__icon-toolbar-single-page">toolbar.tools.single-page</xbutton>
                <xbutton @tooltip tooltip-title="toolbar.tools.continuous-page" @controller="pagemode:ContinuousPageModeController" name="continuous-page" icon-class="fv__icon-toolbar-continuous-page">toolbar.tools.continuous-page</xbutton>
                <!-- <facing-page-button></facing-page-button>
                <continuous-facing-page-button></continuous-facing-page-button> -->
                <xbutton small="true" @require-modules="h-continuous" @tooltip tooltip-title="h-continuous:buttons.title" @controller="h-continuous:HContinuousViewModeController" name="h-continuous-button" icon-class="fv__icon-toolbar-h-continuous-page">h-continuous:buttons.title</xbutton>
                <!--<h-single:h-single-button></h-single:h-single-button>-->
                <!--<h-facing:h-facing-button></h-facing:h-facing-button>-->
            </mobile:pageview-dropdown>
            <xbutton name="fv--mobile-topbar-search-button" icon-class="fv__icon-mobile-topbar-search" @controller="mobile:SearchToggleButtonController"></xbutton>
            <dropdown class="fv__ui-mobile-topbar-tools-dropdown fv__ui-dropdown-hide-text" name="fv--mobile-topbar-tools-dropdown" @cannotBeDisabled>
                <open-localfile-button @cannotBeDisabled></open-localfile-button>
                <open-fromurl-button @cannotBeDisabled></open-fromurl-button>
                <print:print-button></print:print-button>
                <xbutton @tooltip text="toolbar.buttons.download" tooltip-title="toolbar.buttons.download" name="download-file-button" icon-class="fv__icon-toolbar-download" @controller="file:DownloadFileController">toolbar.buttons.download</xbutton>
                <full-screen:toggle-full-screen-button name="fv--toggle-full-screen-button" @hide-on-device="ios"></full-screen:toggle-full-screen-button>
                <xbutton @require-modules="fpmodule" name="fv--file-property-button" icon-class="fv__icon-properties" @tooltip tooltip-title="file-property:buttons.title" text="file-property:buttons.title" @controller="fpmodule:FileInfoCallbackController">file-property:buttons.title</xbutton>
            </dropdown>
        </div>
    </div>
    <toolbar>
        <div class="fv__ui-mobile-tab-bodies" name="fv--mobile-toolbar-tabs">
            <div class="fv__ui-mobile-tab-body" name="comment-tab-body">
                <group-list shrink-size="-1">
                    <group>
                        <ribbon-button @var.self="$component">
                        <dropdown @selectable-dropdown="first" class="fv__ui-dropdown-hide-text" @on.selected="self.select($args[0])" selected="0">
                            <xbutton ribbon-icon="fx-icon-ribbon_home_highlight-32" name="create-highlight" @tooltip tooltip-title="toolbar.tooltip.highlight.title" ribbon-text="toolbar.tooltip.highlight.title" @controller="states:CreateHighlightController" icon-class="fx-icon-sm fv__icon-toolbar-text-highlight">toolbar.create.highlight</xbutton>
                            <xbutton name="create-area-highlight" @tooltip tooltip-title="toolbar.tooltip.areaHighlight.title" text="toolbar.tooltip.areaHighlight.title" @controller="states:CreateAreaHighlightController" icon-class="fx-icon-sm fx-icon-ribbon_comment_area_highlight-16" ribbon-icon="fv__icon-toolbar-area-highlight">toolbar.create.areahighlight</xbutton>
                            <xbutton ribbon-icon="fx-icon-ribbon_comment_strikeout-32" name="create-strikeout" @tooltip tooltip-title="toolbar.tooltip.strikeout.title"  ribbon-text="toolbar.tooltip.strikeout.title" @controller="states:CreateStrikeoutController" icon-class="fx-icon-sm fv__icon-toolbar-strikeout">toolbar.create.strikeout</xbutton>
                            <xbutton ribbon-icon="fx-icon-ribbon_comment_squiggly_underline-32" name="create-underline" @tooltip tooltip-title="toolbar.tooltip.underline.title"  ribbon-text="toolbar.tooltip.underline.title" @controller="states:CreateUnderlineController" icon-class="fx-icon-sm fv__icon-toolbar-underline">toolbar.create.underline</xbutton>
                            <xbutton ribbon-icon="fx-icon-ribbon_comment_underline-32" name="create-squiggly" @tooltip tooltip-title="toolbar.tooltip.squiggly.title"  ribbon-text="toolbar.tooltip.squiggly.title" @controller="states:CreateSquigglyController" icon-class="fx-icon-sm fv__icon-toolbar-squiggly">toolbar.create.squiggly</xbutton>
                            <xbutton ribbon-icon="fx-icon-ribbon_comment_replace_text-32" name="create-replace" @tooltip tooltip-title="toolbar.tooltip.replace.title"  ribbon-text="toolbar.tooltip.replace.title" @controller="states:CreateReplaceController" icon-class="fx-icon-sm fv__icon-toolbar-replace">toolbar.create.replace</xbutton>
                            <xbutton ribbon-icon="fx-icon-ribbon_comment_insert_text-32" name="create-caret" @tooltip tooltip-title="toolbar.tooltip.caret.title"  ribbon-text="toolbar.tooltip.caret.title" @controller="states:CreateCaretController" icon-class="fx-icon-sm fv__icon-toolbar-insert">toolbar.create.caret</xbutton>
                        </dropdown>
                        </ribbon-button>
                        <ribbon-button @var.self="$component">
                            <dropdown @selectable-dropdown="first" class="fv__ui-dropdown-hide-text" @on.selected="self.select($args[0])" selected="0">
                                <xbutton name="freetext-textbox" @tooltip tooltip-title="toolbar.tooltip.textbox.title" @controller="states:CreateTextboxController" icon-class="fx-icon-sm fv__icon-toolbar-textbox" ribbon-icon="fv__icon-toolbar-textbox" >toolbar.create.textbox</xbutton>
                                <xbutton name="freetext-typewriter" @tooltip tooltip-title="toolbar.tooltip.typewriter.title" @controller="states:CreateTypewriterController" icon-class="fx-icon-sm fv__icon-toolbar-typewriter" ribbon-icon="fv__icon-toolbar-typewriter" >toolbar.create.typewriter</xbutton>
                                <xbutton name="freetext-callout" @tooltip tooltip-title="toolbar.tooltip.callout.title" @controller="states:CreateCalloutController" icon-class="fx-icon-sm fv__icon-toolbar-callout" ribbon-icon="fv__icon-toolbar-callout" >toolbar.create.callout</xbutton>
                            </dropdown>
                        </ribbon-button>
                        <create-drawings-ribbon-dropdown></create-drawings-ribbon-dropdown>
                    </group>
                    <group>
                        <ribbon-button @var.self="$component">
                            <dropdown @selectable-dropdown="first" class="fv__ui-dropdown-hide-text" @on.selected="self.select($args[0])" selected="0">
                                <xbutton name="pencil-tool" @tooltip tooltip-title="toolbar.tooltip.pencil.title" @controller="states:CreatePencilController" icon-class="fx-icon-sm fv__icon-toolbar-pencil" ribbon-icon="fv__icon-toolbar-pencil">toolbar.buttons.pencil</xbutton>
                                <xbutton name="eraser-tool" @tooltip tooltip-title="toolbar.tooltip.eraser.title" @controller="states:EraserController" icon-class="fx-icon-sm fv__icon-toolbar-eraser" ribbon-icon="fv__icon-toolbar-eraser">toolbar.buttons.eraser</xbutton>
                            </dropdown>
                        </ribbon-button>
                        <stamp-ribbon-dropdown align="client-center"></stamp-ribbon-dropdown>
                        <stamp-create-ribbon-dropdown></stamp-create-ribbon-dropdown>
                        <ribbon-button @var.self="$component">
                        <dropdown name="fv-mobile-attachment-dropdown" @selectable-dropdown="first" class="fv__ui-dropdown-hide-text"  @on.selected="self.select($args[0])" selected="0">
                            <xbutton name="create-text" @tooltip tooltip-title="toolbar.tooltip.note.title" text="toolbar.tooltip.note.title" @controller="states:CreateTextController" icon-class="fv__icon-toolbar-note">toolbar.create.note</xbutton>
                            <xbutton name="create-fileattachment" @tooltip tooltip-title="toolbar.tooltip.fileattachment.title" text="toolbar.buttons.fileattachment" @controller="states:CreateFileAttachmentController" icon-class="fv__icon-toolbar-file-attachment">toolbar.create.fileattachment</xbutton>
                            <xbutton name="create-image" @tooltip tooltip-title="toolbar.tooltip.imageAnnot.title" @controller="states:CreateImageController" icon-class="fv__icon-toolbar-image">toolbar.create.image</xbutton>
                            <xbutton name="create-link" @tooltip tooltip-title="toolbar.tooltip.link.title" @controller="states:CreateLinkController" icon-class="fv__icon-toolbar-links" >toolbar.create.link</xbutton>
                        </dropdown>
                        </ribbon-button>
                    </group>
                    <group name="fv--mobile-media-group" @hide-on-sr @collab-unsupported @require-modules="multi-media">
                        <multi-media:multi-media-ribbon-button></multi-media:multi-media-ribbon-button>
                    </group>
                </group-list>
            </div>
            <div class="fv__ui-mobile-tab-body" @hide-on-sr name="protect-tab-body">
                <group-list shrink-size="-1" name="protect-toolbar-group-list">
                    <group name="protect-tab-group-sign">
                        <ink-sign-ribbon-dropdown name="fv--ink-sign-dropdown"></ink-sign-ribbon-dropdown>
                    </group>
                    <group name="password-protect-group" @require-modules="password-protect">
                        <ribbon-button @tooltip tooltip-title="password-protect:toolbar.protect.secureDocument" text="password-protect:toolbar.protect.secureDocument" icon-class="fx-icon-ribbon_protect_security_document-32" not-immediately="true">
                            <dropdown separate="false">
                                <password-protect:password-protect-button icon-class="fx-icon-xs fx-icon-ribbon_protect_security_password_protect-16"></password-protect:password-protect-button>
                                <password-protect:remove-protect-button icon-class="fx-icon-xs fx-icon-ribbon_protect_security_remove_protect-16"></password-protect:remove-protect-button>
                            </dropdown>
                        </ribbon-button>
                    </group>
                    <group name="redaction" functional-module="redaction" @license-validation @require-modules="redaction">
                        <redaction:create-redactions-ribbon-dropdown></redaction:create-redactions-ribbon-dropdown>
                        <redaction:apply-redactions-ribbon-button></redaction:apply-redactions-ribbon-button>
                        <redaction:redaction-search-ribbon-button></redaction:redaction-search-ribbon-button>
                    </group>
                </group-list>
            </div>
        </div>
    </toolbar>
    <div class="fv__ui-body">
        <sidebar name="sidebar" @controller="sidebar:SidebarController" width="0.64" @mobile:sidebar-toggler>
            <bookmark-sidebar-panel></bookmark-sidebar-panel>
            <commentlist-sidebar-panel>
                <slot for="header">
                    <!--<comment-list:toggle-commentlist-group-button></comment-list:toggle-commentlist-group-button>-->
                    <dropdown separate="false" class="comment-list-dropdown" icon-class="fv__icon-toolbar-more">
                        <!-- <comment-list:expand-pages-button></comment-list:expand-pages-button>
                        <comment-list:collapse-pages-button></comment-list:collapse-pages-button> -->
                        <!--  <comment-list:show-comment-button></comment-list:show-comment-button>
                        <comment-list:hide-comment-button></comment-list:hide-comment-button> -->
                        <file-selector name="commentlist-import-comment" @trigon.close.disable @trigon.open.enable text="sidebar.commentlist.dropdown.import-comment" @controller="comment-list:ImportCommentButtonController" icon-class="fv__icon-sidebar-import-comment" accept=".fdf,.xfdf,.json">sidebar.commentlist.dropdown.import-comment</file-selector>
                        <dropdown-item class="fv__ui-dropdown-container-item">
                            <dropdown separate="false" align="left" valign="bottom" icon-class="fv__icon-sidebar-export-comment" name="commentlist-export-comment" text="sidebar.commentlist.dropdown.export-comment" @controller="comment-list:ExportCommentDropDownItemController" @trigon.close.disable @trigon.open.enable>
                                <comment-list:export-xfdf-button></comment-list:export-xfdf-button>
                                <comment-list:export-fdf-button></comment-list:export-fdf-button>
                                <comment-list:export-json-button></comment-list:export-json-button>
                                <!--<dropdown-item class="fv__ui-dropdown-container-item">
                                    <comment-list:export-button></comment-list:export-button>
                                </dropdown-item>
                                <comment-list:export-word-comment-button></comment-list:export-word-comment-buttom>-->
                            </dropdown>
                        </dropdown-item>
                        <!-- <dropdown-item class="fv__ui-dropdown-container-item">
                           <comment-list:sort-comments-dropdown></comment-list:sort-comments-dropdown>
                        </dropdown-item> -->
                    </dropdown>
                </slot>
            </commentlist-sidebar-panel>
            <thumbnail-sidebar-panel @require-modules="thumbnail"></thumbnail-sidebar-panel>
            <layer-sidebar-panel @hide-on-sr></layer-sidebar-panel>
            <search-sidebar-panel></search-sidebar-panel>
            <!-- <field-sidebar-panel>
                <slot for="header">
                    <dropdown class="field-order-dropdown" icon-class="fv__icon-order" separate="false" @controller="field:FieldSidebarMenuController as fsmc">
                        <option-group>
                            <option-group-item @on.click="fsmc.setOrder('row')">sidebar.field.order.row</option-group-item>
                            <option-group-item @on.click="fsmc.setOrder('column')">sidebar.field.order.column</option-group-item>
                            <option-group-item @on.click="fsmc.setOrder('structure')">sidebar.field.order.structure</option-group-item>
                        </option-group>
                    </dropdown>
                    <dropdown class="field-orderaz-dropdown" icon-class="fv__icon-orderaz" separate="false" @controller="field:FieldSidebarMenuController as fsmc">
                        <option-group>
                            <option-group-item @on.click="fsmc.setOrder('alphabetic')">sidebar.field.order.alphabetic</option-group-item>
                            <option-group-item selected @on.click="fsmc.setOrder('tab')">sidebar.field.order.tab</option-group-item>
                        </option-group>
                    </dropdown>
                </slot>
            </field-sidebar-panel> -->
            <attachment-sidebar-panel></attachment-sidebar-panel>
        </sidebar>
        <viewer @zoom-on-pinch @zoom-on-doubletap @touch-to-scroll></viewer>
        <page-nav-button></page-nav-button>
    </div>
    <template name="template-container">
        <create-stamp-dialog @lazy></create-stamp-dialog>
        <print:print-dialog @lazy></print:print-dialog>
        <loupe-tool-dialog @lazy></loupe-tool-dialog>
        <create-ink-sign-dialog @lazy></create-ink-sign-dialog>
        <measurement-popup @lazy></measurement-popup>
        <fpmodule:file-property-dialog @lazy></fpmodule:file-property-dialog>
        <redaction:redaction-page-dialog @hide-on-sr @lazy></redaction:redaction-page-dialog>
        <!-- contextmenus -->
        <page-contextmenu></page-contextmenu>
        <measurement-contextmenu @lazy></measurement-contextmenu>
        <default-annot-contextmenu @lazy></default-annot-contextmenu>
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
        <caret-contextmenu @lazy name="fv--areahighlight-contextmenu"></caret-contextmenu>
        <caret-contextmenu @lazy name="fv--replace-contextmenu"></caret-contextmenu>
        <markup-contextmenu @lazy></markup-contextmenu>
        <caret-contextmenu @lazy name="fv--caret-contextmenu"></caret-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--highlight-contextmenu"></textmarkup-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--strikeout-contextmenu"></textmarkup-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--underline-contextmenu"></textmarkup-contextmenu>
        <textmarkup-contextmenu @lazy name="fv--squiggly-contextmenu"></textmarkup-contextmenu>
        <freetext-contextmenu @lazy name="fv--typewriter-contextmenu"></freetext-contextmenu>
        <freetext-contextmenu @lazy name="fv--callout-contextmenu"></freetext-contextmenu>
        <freetext-contextmenu @lazy name="fv--textbox-contextmenu"></freetext-contextmenu>
        <action-annot-contextmenu @lazy name="fv--image-contextmenu"></action-annot-contextmenu>
        <action-annot-contextmenu @lazy name="fv--link-contextmenu"></action-annot-contextmenu>
        <comment-card-contextmenu @lazy></comment-card-contextmenu>
        <fileattachment-contextmenu @lazy></fileattachment-contextmenu>
        <media-contextmenu @hide-on-sr @lazy></media-contextmenu>
        <sound-contextmenu @hide-on-sr @lazy></sound-contextmenu>
        <redact-contextmenu @lazy></redact-contextmenu>
        <edit-graphics:image-contextmenu @lazy></edit-graphics:image-contextmenu>
        <edit-pageobjects:path-contextmenu @lazy></edit-pageobjects:path-contextmenu>
        <field-signature-contextmenu @lazy name="fv--field-signature-contextmenu"></field-signature-contextmenu>
        <text-sel:text-selection-tooltip @lazy></text-sel:text-selection-tooltip>
        <annottext name="fv--annottext-tooltip"></annottext>
        <!-- Field panel contentmenu -->
        <contextmenu name="fv--field-contextmenu" @controller="field:FieldSidebarMenuController" @lazy>
            <contextmenu-item name="fv--contextmenu-item-properties">contextmenu.fieldPanel.properties</contextmenu-item>
            <contextmenu-item name="fv--contextmenu-item-rename">contextmenu.fieldPanel.rename</contextmenu-item>
            <contextmenu-item name="fv--contextmenu-item-delete">contextmenu.fieldPanel.delete</contextmenu-item>
        </contextmenu>
        <comment-list:filter-dialog name="fv--commentlist-filter-comment-dialog"></comment-list:filter-dialog>
        <selected-text-contextmenu @lazy></selected-text-contextmenu>
        <selected-image-contextmenu @lazy></selected-image-contextmenu>
        <selected-rectangle-contextmenu @lazy></selected-rectangle-contextmenu>
        <bookmark-contextmenu @lazy></bookmark-contextmenu>
        <signature:signed-property-dialog name="signed-property-dialog" @lazy></signature:signed-property-dialog>
        <thumbnail:thumbnail-contextmenu name="fv--thumbnail-contextmenu" @lazy></thumbnail:thumbnail-contextmenu>
    </template>
</webpdf>