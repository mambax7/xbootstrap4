<!--#region Thumbnail Navigator Skin Begin -->
<!-- Help: https://www.jssor.com/development/slider-with-thumbnail-navigator.html -->

<{if $jssor_thumbnails == 'thumbnail-051'}>
        <style>
            .jssort051 .p {position:absolute;top:0;left:0;background-color:#000;}
            .jssort051 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.45;}
            .jssort051 .p:hover .t{opacity:.8;}
            .jssort051 .pav .t, .jssort051 .pdn .t, .jssort051 .p:hover.pdn .t{opacity:1;}
        </style>
        <div data-u="thumbnavigator" class="jssort051" style="position:absolute;left:0;bottom:0;width:<{$jssor_maxwidth}>px;height:100px;" data-autocenter="1" data-scale-bottom="0.75">
            <div data-u="slides">
                <div data-u="prototype" class="p" style="width:200px;height:100px;">
                    <div data-u="thumbnailtemplate" class="t"></div>
                </div>
            </div>
        </div>
<{/if}>

<{if $jssor_thumbnails == 'thumbnail-052'}>
        <style>
            .jssort052 .p {position:absolute;top:0;left:0;background-color:#fff;}
            .jssort052 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.45;}
            .jssort052 .p:hover .t{opacity:.8;}
            .jssort052 .pav .t, .jssort052 .pdn .t, .jssort052 .p:hover.pdn .t{opacity:1;}
        </style>
        <div data-u="thumbnavigator" class="jssort052" style="position:absolute;left:0;bottom:0;width:<{$jssor_maxwidth}>px;height:100px;" data-autocenter="1" data-scale-bottom="0.75">
            <div data-u="slides">
                <div data-u="prototype" class="p" style="width:200px;height:100px;">
                    <div data-u="thumbnailtemplate" class="t"></div>
                </div>
            </div>
        </div>
<{/if}>

<{if $jssor_thumbnails == 'thumbnail-061'}>
        <style>
            .jssort061 .p {position:absolute;top:0;left:0;border:2px solid rgba(255,255,255,.5);box-sizing:border-box;}
            .jssort061 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.6;}
            .jssort061 .p:hover {border-color:rgba(0,0,0,.6);}
            .jssort061 .pav, .jssort061 .p:hover.pdn{border-color:#000;}
            .jssort061 .pav .t, .jssort061 .p:hover.pdn .t{opacity:1;}
        </style>
        <div data-u="thumbnavigator" class="jssort061" style="position:absolute;left:0;bottom:0;width:<{$jssor_maxwidth}>px;height:100px;" data-autocenter="1" data-scale-bottom="0.75">
            <div data-u="slides">
                <div data-u="prototype" class="p" style="width:190px;height:84px;">
                    <div data-u="thumbnailtemplate" class="t"></div>
                </div>
            </div>
        </div>
<{/if}>

<{if $jssor_thumbnails == 'thumbnail-062'}>
        <style>
            .jssort062 .p {position:absolute;top:0;left:0;border:2px solid rgba(0,0,0,.4);box-sizing:border-box;}
            .jssort062 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.6;}
            .jssort062 .p:hover {border-color:rgba(255,255,255,.6);}
            .jssort062 .pav, .jssort062 .p:hover.pdn{border-color:#fff;}
            .jssort062 .pav .t, .jssort062 .p:hover.pdn .t{opacity:1;}
        </style>
        <div data-u="thumbnavigator" class="jssort062" style="position:absolute;left:0;bottom:0;width:<{$jssor_maxwidth}>px;height:100px;background-color:#000;" data-autocenter="1" data-scale-bottom="0.75">
            <div data-u="slides">
                <div data-u="prototype" class="p" style="width:190px;height:84px;">
                    <div data-u="thumbnailtemplate" class="t"></div>
                </div>
            </div>
        </div>
<{/if}>

<{if $jssor_thumbnails == 'thumbnail-091'}>
        <div u="thumbnavigator" style="position:absolute;bottom:0;left:0;width:<{$jssor_maxwidth}>px;height:50px;color:#FFF;overflow:hidden;cursor:default;background-color:rgba(0,0,0,.5);">
            <div u="slides">
                <div u="prototype" style="position:absolute;top:0;left:0;width:<{$jssor_maxwidth}>px;height:50px;">
                    <div u="thumbnailtemplate" style="position:absolute;top:0;left:0;width:100%;height:100%;font-family:verdana;font-weight:normal;line-height:50px;font-size:16px;padding-left:10px;box-sizing:border-box;"></div>
                </div>
            </div>
        </div>
<{/if}>

<{if $jssor_thumbnails == 'thumbnail-092'}>
        <div u="thumbnavigator" style="position:absolute;bottom:0;left:0;width:<{$jssor_maxwidth}>px;height:50px;color:#000;overflow:hidden;cursor:default;background-color:rgba(255,255,255,.5);">
            <div u="slides">
                <div u="prototype" style="position:absolute;top:0;left:0;width:<{$jssor_maxwidth}>px;height:50px;">
                    <div u="thumbnailtemplate" style="position:absolute;top:0;left:0;width:100%;height:100%;font-family:verdana;font-weight:normal;line-height:50px;font-size:16px;padding-left:10px;box-sizing:border-box;"></div>
                </div>
            </div>
        </div>
<{/if}>

<{if $jssor_thumbnails == 'thumbnail-101'}>
        <style>
            .jssort101 .p {position: absolute;top:0;left:0;box-sizing:border-box;background:#000;}
            .jssort101 .p .cv {position:relative;top:0;left:0;width:100%;height:100%;border:2px solid #000;box-sizing:border-box;z-index:1;}
            .jssort101 .a {fill:none;stroke:#fff;stroke-width:400;stroke-miterlimit:10;visibility:hidden;}
            .jssort101 .p:hover .cv, .jssort101 .p.pdn .cv {border:none;border-color:transparent;}
            .jssort101 .p:hover{padding:2px;}
            .jssort101 .p:hover .cv {background-color:rgba(0,0,0,6);opacity:.35;}
            .jssort101 .p:hover.pdn{padding:0;}
            .jssort101 .p:hover.pdn .cv {border:2px solid #fff;background:none;opacity:.35;}
            .jssort101 .pav .cv {border-color:#fff;opacity:.35;}
            .jssort101 .pav .a, .jssort101 .p:hover .a {visibility:visible;}
            .jssort101 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.6;}
            .jssort101 .pav .t, .jssort101 .p:hover .t{opacity:1;}
        </style>
        <div data-u="thumbnavigator" class="jssort101" style="position:absolute;left:0px;bottom:0px;width:<{$jssor_maxwidth}>px;height:100px;background-color:#000;" data-autocenter="1" data-scale-bottom="0.75">
            <div data-u="slides">
                <div data-u="prototype" class="p" style="width:190px;height:84px;">
                    <div data-u="thumbnailtemplate" class="t"></div>
                    <svg viewbox="0 0 16000 16000" class="cv">
                        <circle class="a" cx="8000" cy="8000" r="3238.1"></circle>
                        <line class="a" x1="6190.5" y1="8000" x2="9809.5" y2="8000"></line>
                        <line class="a" x1="8000" y1="9809.5" x2="8000" y2="6190.5"></line>
                    </svg>
                </div>
            </div>
        </div>
<{/if}>
<{if $jssor_thumbnails == 'thumbnail-111'}>
        <style>
            .jssort111 .p {position:absolute;top:0;left:0;width:200px;height:100px;background-color:#000;}
            .jssort111 .p img {position:absolute;top:0;left:0;width:100%;height:100%;}
            .jssort111 .t {position:absolute;top:0;left:0;width:100%;height:100%;border:none;opacity:.45;}
            .jssort111 .p:hover .t{opacity:.8;}
            .jssort111 .pav .t, .jssort111 .pdn .t, .jssort111 .p:hover.pdn .t{opacity:1;}
            .jssort111 .ti {position:absolute;bottom:0px;left:0px;width:100%;height:28px;line-height:28px;text-align:center;font-size:12px;color:#fff;background-color:rgba(0,0,0,.3)}
            .jssort111 .pav .ti, .jssort111 .pdn .ti, .jssort111 .p:hover.pdn .ti{color:#000;background-color:rgba(255,255,255,.6);}
        </style>
        <div data-u="thumbnavigator" class="jssort111" style="position:absolute;left:0px;bottom:0px;width:<{$jssor_maxwidth}>px;height:100px;cursor:default;" data-autocenter="1" data-scale-bottom="0.75">
            <div data-u="slides">
                <div data-u="prototype" class="p">
                    <div data-u="thumbnailtemplate" class="t"></div>
                </div>
            </div>
        </div>
<{/if}>
<{if $jssor_thumbnails == 'thumbnail-121'}>
        <style>
            .jssort121 .p {position:absolute;top:0;left:0;border-bottom:1px solid rgba(255,255,255,.2);box-sizing:border-box;color:#fff;background:rgba(0,0,0,.1);opacity:.7;}
            .jssort121 .p .t {position:absolute;padding:10px;box-sizing:border-box;top:0;left:0;width:100%;height:100%;line-height:24px;overflow:hidden;}
            .jssort121 .p .i {margin-right:10px;position:relative;top:0;left:0;width:96px;height:48px;border:none;float:left;}
            .jssort121 .pav, .jssort121 .p:hover {color:#000;background:rgba(255,255,255,.7);}
            .jssort121 .p:hover {opacity:.75;}
            .jssort121 .pav, .jssort121 .p:hover.pdn {opacity:1;}
            .jssort121 .ti {position:relative;font-size:14px;font-weight:bold;}
            .jssort121 .d {position:relative;font-size:12px;}
            /*.jssort121 .d:before {content:'\a';white-space:pre;}*/
        </style>
        <div data-u="thumbnavigator" class="jssort121" style="position:absolute;left:0px;top:0px;width:268px;height:380px;overflow:hidden;cursor:default;" data-autocenter="2" data-scale-left="0.75">
            <div data-u="slides">
                <div data-u="prototype" class="p" style="width:268px;height:68px;">
                    <div data-u="thumbnailtemplate" class="t"></div>
                </div>
            </div>
        </div>
<{/if}>


















<!--#endregion Thumbnail Navigator Skin End -->