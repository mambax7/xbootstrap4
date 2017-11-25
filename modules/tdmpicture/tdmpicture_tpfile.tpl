<table class="outer even">
    <tbody>
    <tr>
        <td>
            <{if $numfile != 0}>
                <ul id="display" class="<{$smarty.const.TDMPICTURE_DISPLAY}>">
                    <{foreach item=file from=$file}>
                        <li>
                            <{*<div class="switch_title">*}>
                            <{*<h2>*}>
                            <{*<a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$file.id}>&<{$file.cat_nav}>&tris=<{$tris}>&order=<{$order}>"><{$file.title}></a>*}>
                            <{*</h2>*}>
                            <div class="switch_img">

                                <div style="width:<{$smarty.const.TDMPICTURE_THUMB_WIDTH}>px;height:<{$smarty.const.TDMPICTURE_THUMB_HEIGTH}>px;">
                                    <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$file.id}>&<{$file.cat_nav}>&tris=<{$tris}>&order=<{$order}>"><img src="<{$file.img}>" slide="<{$file.img_popup}>" rel="group1" title="<{$file.title}>" alt="<{$file.title}>"></a>
                                </div>
                            </div>
                            <{*</div>*}>

                            <div style="float:left;">
                                <div class="switch_title">
                                    <h2>
                                        <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$file.id}>&<{$file.cat_nav}>&tris=<{$tris}>&order=<{$order}>"><{$file.title}></a>
                                    </h2>

                                    <div class="switch_in">
                                        <span class="fa fa-user">: <{*<{$smarty.const._MD_TDMPICTURE_BY}>*}><a href="<{$smarty.const.TDMPICTURE_URL}>/user.php?ut=<{$file.uid}>"><{$file.postername}></a></span>
                                        <{$smarty.const._MD_TDMPICTURE_IN}>: <a href="<{$smarty.const.TDMPICTURE_URL}>/viewcat.php?ct=<{$file.file_cat_id}>"><{$file.file_cat}></a>
                                        <span class="fa fa-calendar">: <{$file.indate}></span>
                                    </div>

                                </div>
                            </div>


                            <div id="tdmpicture_text" class="switch_desc"><{$file.text}><br class="clear"></div>


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


                        </li>
                    <{/foreach}>
                </ul>
            <{else}>
                <div align="center"><br><{$smarty.const._MD_TDMPICTURE_NONEFILE}><br><br></div>
            <{/if}>
        </td>
    </tr>
    </tbody>
</table>
<br class="clear">
