<script type="text/javascript">
    var largeur = screen.width;
    var hauteur = screen.height;

    var $tdmpicture = jQuery.noConflict();

    $tdmpicture(document).ready(function () {

        $tdmpicture("#breadCrumb").jBreadCrumb();


    });
</script>

<br>

<div style="margin-left:auto;margin-right:auto;">

    <!--nav -->
    <div class="TDMNavl"><h1><{$tree_title}></h1></div>
    <br class="clear">
    <div class="TDMNav TDMNav outer odd">
        <{if $xoops_userid}><a href="<{$smarty.const.TDMPICTURE_URL}>/user.php?ut=<{$xoops_userid}>"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/photo.png" title="<{$smarty.const._MD_TDMPICTURE_VIEWMYALBUM}>"></a><{/if}>
        <{if $perm_submit}><a href="<{$smarty.const.TDMPICTURE_URL}>/submit.php"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/upload.png" title="<{$smarty.const._MD_TDMPICTURE_UPLOAD}>">
            </a><{/if}>
        <{if $perm_cat}><a href="<{$smarty.const.TDMPICTURE_URL}>/submit.php?op=cat"><img src="<{$smarty.const.TDMPICTURE_IMAGES_URL}>/uploadcat.png" title="<{$smarty.const._MD_TDMPICTURE_UPLOADCAT}>">
            </a><{/if}>
    </div>
    <br class="clear">
    <{$tree_display}>

    <hr>

    <div class="even outer">
        <ul id="display" class="display">
            <{foreach item=file from=$file}>
                <li>

                    <div class="switch_img">
                        <{$file.user_img}>
                    </div>

                    <div style="float:left;">
                        <div class="switch_title">
                            <h2>
                                <a href="<{$smarty.const.TDMPICTURE_URL}>/user.php?ut=<{$file.file_uid}>"><{$file.user_uname}></a>
                            </h2>

                            <div class="switch_in">
                                <{$smarty.const._MD_TDMPICTURE_NBFILE}>: <{$file.file_usercount}>
                            </div>

                        </div>
                    </div>


                </li>
            <{/foreach}>
        </ul>

        <br class="clear">
    </div>
    <br>

    <{if $pagenav != ''}>
        <br>
        <div align="center"><{$pagenav}></div>
    <{/if}>
    <br class="clear"> <br>
</div>
