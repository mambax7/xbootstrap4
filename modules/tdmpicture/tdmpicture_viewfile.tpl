<script type="text/javascript">
    var largeur = screen.width;
    var hauteur = screen.height;

    var $tdmpicture = jQuery.noConflict();

    $tdmpicture(document).ready(function () {

        $tdmpicture(".group1").colorbox({
            maxHeight: hauteur - 200
        });

        $tdmpicture("#breadCrumb").jBreadCrumb();

    });
</script>

<br>

<div style="margin-left:auto;margin-right:auto;">
    <{if $numfile != 0}>


        <!--nav -->
        <div class="TDMNavl"><h1><{$tree_title}></h1></div>
        <br class="clear">
        <{foreach item=file from=$file}>
            <div class="TDMNav TDMNav outer odd">
                <{if $perm_dl }><a href="<{$smarty.const.TDMPICTURE_URL}>/download.php?st=<{$file.id}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/down.png" title="<{$smarty.const._MD_TDMPICTURE_DL}>"></a><{/if}>
                <a href="javascript:;" slide="<{$file.img_popup}>" class="group1" title="<{$file.title}>" alt="<{$file.title}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/zoom.png" title="<{$smarty.const._MD_TDMPICTURE_SCREEN}>"></a>
                <a href="<{$smarty.const.TDMPICTURE_URL}>/get.php?st=<{$file.id}>&size=full" target="_blank"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/fullscreen.png" title="<{$smarty.const._MD_TDMPICTURE_FULLSCREEN}>"></a>
                <a href="javascript:masque('1');"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/link.png" title="<{$smarty.const._MD_TDMPICTURE_LINK}>"></a>
                <{if $file.useralb }><a href="<{$smarty.const.TDMPICTURE_URL}>/user.php?ut=<{$file.uid}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/photo.png" title="<{$smarty.const._MD_TDMPICTURE_VIEWALBUM}> <{$file.postername}>"></a><{/if}>
                <{if $perm_submit}><a href="<{$smarty.const.TDMPICTURE_URL}>/submit.php"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/upload.png" title="<{$smarty.const._MD_TDMPICTURE_UPLOAD}>">
                    </a><{/if}>
                <{if $perm_cat}><a href="<{$smarty.const.TDMPICTURE_URL}>/submit.php?op=cat"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/uploadcat.png" title="<{$smarty.const._MD_TDMPICTURE_UPLOADCAT}>"></a><{/if}>
            </div>
            <br class="clear">
            <{$tree_display}>
            <hr>
            <div class="even outer">
                <div style="float:left; width:40%; margin:20px; display:inline-block;">
                    <div class="detail_img">
                        <a href="javascript:;" slide="<{$file.img_popup}>" class="group1" title="<{$file.title}>" alt="<{$file.title}>">
                            <img style="max-width:<{$smarty.const.TDMPICTURE_WIDTH}>px; max-height:<{$smarty.const.TDMPICTURE_HEIGHT}>px;" src="<{$file.img}>" slide="<{$file.img_popup}>" rel="group1" title="<{$file.title}>" alt="<{$file.title}>">
                        </a>
                    </div>


                    <{if $file.text}>
                        <br>
                        <div id="tdmpicture_text"><b><{$smarty.const._MD_TDMPICTURE_DESCRIPTION}></b>
                            <hr><{$file.text}><br></div>
                    <{/if}>
                    <div style="display:none;" id="masque_1"><br><{$getlink}></div>
                </div>


                <div style="float:right; width:40%; margin:20px; display:inline-block;">
                    <div id="tdmpicture_num" class="switch_info odd">
                        <span><{$file.comments}></span>
                        <hr>
                        <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$file.id}>&<{$file.cat_nav}>&tris=<{$tris}>"><{$smarty.const._MD_TDMPICTURE_COMMENT}></a>
                    </div>
                    <div id="tdmpicture_num" class="switch_info odd">
                        <{if $perm_vote}>
                            <a id="tdmpicture_voteup" href="javascript:;" onclick="AddVote(<{$file.id}>);return false;" title="<{$smarty.const._MD_TDMPICTURE_VOTEADD}>"></a>
                        <{/if}>
                        <span><{$file.counts}></span>/<span><{$file.votes}></span>
                        <hr>
                        <{if $perm_vote}>
                            <a id="tdmpicture_votedown" href="javascript:;" onclick="RemoveVote(<{$file.id}>);return false;" title="<{$smarty.const._MD_TDMPICTURE_VOTEREMOVE}>"></a>
                        <{/if}>
                        <{$smarty.const._MD_TDMPICTURE_VOTE}>
                    </div>

                    <{if $file.favourite}>
                        <div id="tdmpicture_num" class="switch_info odd">
                            <{$file.favourite}>
                            <hr>
                            <{$smarty.const._MD_TDMPICTURE_POPULAR}>
                        </div>
                    <{/if}>


                    <br>
                    <div id="tdmpicture_num" class="switch_large odd">
                        <div class="switch_mediuml">
                            <{$smarty.const._MD_TDMPICTURE_BY}>: <a href="<{$smarty.const.TDMPICTURE_URL}>/user.php?ut=<{$file.uid}>"><{$file.postername}></a>
                            <br>
                            <{$smarty.const._MD_TDMPICTURE_IN}>: <a href="<{$smarty.const.TDMPICTURE_URL}>/viewcat.php?ct=<{$file.file_cat_id}>"><{$file.cat}></a>
                            <br>
                            <{$smarty.const._MD_TDMPICTURE_LE}>: <{$file.indate}>
                        </div>
                        <div class="switch_mediumr">
                            <{$file.userimg}>
                        </div>
                    </div>
                    <br>

                    <div id="tdmpicture_num" class="switch_large odd">
                        <div class="switch_mediuml">
                            <{$file.hits}>
                            <br>
                            <{$file.dl}>
                            <br>
                            <{$file.type}>
                            <br>
                            <{$file.size}>
                            <br>
                            <{$file.with}>
                            <br>
                            <{$file.height}>
                            <br>
                        </div>
                        <div class="switch_mediumr">
                            <{$smarty.const._MD_TDMPICTURE_HITS}>
                            <br>
                            <{$smarty.const._MD_TDMPICTURE_DL}>
                            <br>
                            <{$smarty.const._MD_TDMPICTURE_TYPE}>
                            <br>
                            <{$smarty.const._MD_TDMPICTURE_SIZE}>
                            <br>
                            <{$smarty.const._MD_TDMPICTURE_WIDTH}>
                            <br>
                            <{$smarty.const._MD_TDMPICTURE_HEIGHT}>
                            <br>
                        </div>
                    </div>


                    <{if $smarty.const.TDMPICTURE_PDF}>
                        <br>
                        <div class="switch_large odd">
                            <div style="text-align:center;">
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/pdf_paper.php?option=auto&st=<{$file.id}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/pdf_mini.png" title="<{$smarty.const._MD_TDMPICTURE_PDFAUTO}>" alt="<{$smarty.const._MD_TDMPICTURE_PDFAUTO}>"></a>
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/pdf_paper.php?option=A4&st=<{$file.id}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/pdf_A4.png" title="<{$smarty.const._MD_TDMPICTURE_PDFA4}>" alt="<{$smarty.const._MD_TDMPICTURE_PDFA4}>"></a>
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/pdf_paper.php?option=A3&st=<{$file.id}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/pdf_A3.png" title="<{$smarty.const._MD_TDMPICTURE_PDFA3}>" alt="<{$smarty.const._MD_TDMPICTURE_PDFA3}>"></a>
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/pdf_paper.php?option=A2&st=<{$file.id}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/pdf_A2.png" title="<{$smarty.const._MD_TDMPICTURE_PDFA2}>" alt="<{$smarty.const._MD_TDMPICTURE_PDFA2}>"></a>
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/pdf_paper.php?option=A1&st=<{$file.id}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/pdf_A1.png" title="<{$smarty.const._MD_TDMPICTURE_PDFA1}>" alt="<{$smarty.const._MD_TDMPICTURE_PDFA1}>"></a>
                            </div>
                        </div>
                    <{/if}>
                    <br>


                    <{if $file.menu}>
                        <div class="switch_large odd">
                            <{if $file.edit}>
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/modfile.php?op=edit&file_id=<{$file.id}>"><img src="<{xoModuleIcons16 edit.png}>"></a>
                            <{/if}>
                            <{if $file.del}>
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/modfile.php?op=delete&file_id=<{$file.id}>"><img src="<{xoModuleIcons16 delete.png}>"></a>
                            <{/if}>
                        </div>
                    <{/if}>


                </div>

                <br class="clear">
            </div>
            <!--end-->

        <{/foreach}>
        <br>
        <br>
        <!-- Display navigation  -->
        <{if $prev_page}>
            <div style="float:left;border-collapse: separate;" class="switch_img">
                <div style="width:<{$thumb_width}>;height:<{$thumb_heigth}>;">
                    <{$prev_page}>
                </div>
            </div>
        <{/if}>
        <{if $next_page}>
            <div style="float:right;border-collapse: separate;" class="switch_img">
                <div style="width:<{$thumb_width}>;height:<{$thumb_heigth}>;">
                    <{$next_page}>
                </div>
            </div>
        <{/if}>
        <br class="clear">
        <br>
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
                                                                                                                                                                                      alt="<{$smarty.const._MD_TDMPICTURE_RSS}>"></a></div>
        <{/if}>
        <!-- Button RSS END-->
        <br class="clear">
        <br>
        <div style="text-align: center; padding: 3px; margin: 3px;">
            <{$commentsnav}>
            <{$lang_notice}>
        </div>
        <!-- start comments loop -->
        <div style="margin: 3px; padding: 3px;">
            <{if $comment_mode == "flat"}>
                <{include file="db:system_comments_flat.tpl"}>
            <{elseif $comment_mode == "thread"}>
                <{include file="db:system_comments_thread.tpl"}>
            <{elseif $comment_mode == "nest"}>
                <{include file="db:system_comments_nest.tpl"}>
            <{/if}>
        </div>
    <{/if}>

    <br class="clear"><br>

</div>
