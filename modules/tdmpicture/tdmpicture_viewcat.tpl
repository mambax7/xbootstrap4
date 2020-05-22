<br>

<div style="margin-left:auto;margin-right:auto;">
    <{if $form}>
        <{$form}>
    <{else}>


        <!-- off menu -->
        <!-- Top album -->
        <script type="text/javascript">
            var $tdmpicture = jQuery.noConflict();

            $tdmpicture(document).ready(function () {

                $tdmpicture("a.openSlideshow").click(function () {

                    $tdmpicture("img[rel='group1']").colorbox({
                        rel: "group1",
                        slideshow: true,
                        maxWidth: "<{$smarty.const.TDMPICTURE_SLIDE_WIDTH}>px",
                        maxHeight: "<{$smarty.const.TDMPICTURE_SLIDE_HEIGHT}>px"
                    });


                    $tdmpicture(this).colorbox({
                        rel: 'group1',
                        onOpen: function () {
                            $tdmpicture.colorbox.next();
                        }
                    });

                });

                $tdmpicture("img[rel='group1']").click(function () {
                    $tdmpicture.colorbox.remove();
                });

                $tdmpicture("#breadCrumb").jBreadCrumb();

            });

        </script>
        <!--nav -->
        <div class="TDMNavl"><h1><{$tree_title}></h1></div>
        <br class="clear">
        <div class="TDMNav outer odd">
            <{$smarty.const._MD_TDMPICTURE_TRIBY}> <{$display_tris}> |
            <a href="javascript:swith();" class="switch_thumb"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/view_choose.png" title="<{$smarty.const._MD_TDMPICTURE_SWITCH}>"></a>
            <a href="#" class="openSlideshow"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/diapo.png" title="<{$smarty.const._MD_TDMPICTURE_SLIDE}>"></a>
            <{if $xoops_userid}><a href="<{$smarty.const.TDMPICTURE_URL}>/user.php?ut=<{$xoops_userid}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/photo.png" title="<{$smarty.const._MD_TDMPICTURE_VIEWMYALBUM}>"></a><{/if}>
            <{if $perm_submit}><a href="<{$smarty.const.TDMPICTURE_URL}>/submit.php"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/upload.png" title="<{$smarty.const._MD_TDMPICTURE_UPLOAD}>">
                </a><{/if}>
            <{if $perm_cat}><a href="<{$smarty.const.TDMPICTURE_URL}>/submit.php?op=cat"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/uploadcat.png" title="<{$smarty.const._MD_TDMPICTURE_UPLOADCAT}>"></a><{/if}>
        </div>
        <br class="clear">
        <{$tree_display}>
        <hr>
        <{include file="db:tdmpicture_tpfile.tpl"}>


        <!-- Display navigation  -->
        <div align="center"><{$nav_page}></div>
        <br>
        <!-- AddThis Button BEGIN -->
    <{if $smarty.const.TDMPICTURE_SOCIAL}>
        <div style="float:left;"><a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&pub=xa-4ac5feea790b0936"><img src="http://s7.addthis.com/static/btn/v2/lg-share-en.gif" width="125" height="16" alt="Bookmark and Share" style="border:0;"></a>
            <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pub=xa-4ac5feea790b0936"></script>
        </div>
    <{/if}>
        <!-- AddThis Button END -->
        <!-- Button RSS -->
    <{if $smarty.const.TDMPICTURE_RSS}>
        <div style="float:right;"><a href="<{$smarty.const.TDMPICTURE_URL}>/rss.php" title="<{$smarty.const._MD_TDMPICTURE_RSS}>" alt="<{$smarty.const._MD_TDMPICTURE_RSS}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/rss.png" title="<{$smarty.const._MD_TDMPICTURE_RSS}>"
                                                                                                                                                                                  alt="<{$smarty.const._MD_TDMPICTURE_RSS}>"></a>
        </div>
    <{/if}>
        <!-- Button RSS END-->
        <br class="clear">
        <br>
    <{/if}>
</div>
