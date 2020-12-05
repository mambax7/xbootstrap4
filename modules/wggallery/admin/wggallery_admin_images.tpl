<!-- Header -->
<{include file='db:wggallery_admin_header.tpl'}>
<{if $form}>
	<{$form}>
<{/if}>
<{if $error}>
	<div class='errorMsg'><strong><{$error}></strong></div>
<{/if}>
<{if $images_list}>
    <{if $images_approve}>
        <table class='table table-bordered'>
            <thead>
                <tr class='head'>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_ALBUM}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_ID}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_NAME}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_MIMETYPE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_RESX}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_RESY}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_WEIGHT}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_IP}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_DATE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_SUBMITTER}></th>
                    <th class='center width5'><{$smarty.const._CO_WGGALLERY_FORM_ACTION}></th>
                </tr>
            </thead>
            <{if $images_count}>
                <tbody>
                    <{foreach item=image from=$images_list}>
                        <tr class="<{cycle values='odd, even'}>">
                            <td class='center'><{$image.alb_name}></td>
                            <td class='center'><{$image.id}></td>
                            <td class='center'><img src='<{$image.thumb}>' style='max-height:50px' alt='<{$image.name}>'></td>
                            <td class='center'><{$image.title}></td>
                            <td class='center'><{$image.name}></td>
                            <td class='center'><{$image.mimetype}></td>
                            <td class='center'><{$image.size}></td>
                            <td class='center'><{$image.resx}></td>
                            <td class='center'><{$image.resy}></td>
                            <td class='center'><{$image.weight}></td>
                            <td class='center'><{$image.ip}></td>
                            <td class='center'><{$image.date}></td>
                            <td class='center'><{$image.submitter}></td>
                            <td class='center  width10'>
                                <{if $image.state == 0}>
                                    <a href='images.php?op=change_state&amp;img_state=1&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state1.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                    </a>
                                <{/if}>
                                <{if $image.state == 1}>
                                    <a href='images.php?op=change_state&amp;img_state=0&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state0.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                    </a>
                                <{/if}>
                                <{if $image.state == 2}>
                                    <a href='images.php?op=change_state&amp;img_state=1&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state1.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                    </a>
                                    <a href='images.php?op=change_state&amp;img_state=0&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state0.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                    </a>
                                <{/if}>
                                <a href='<{$wggallery_url}>/admin/images.php?op=edit&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._EDIT}>'>
                                    <img src='<{xoModuleIcons16 edit.png}>' alt='images'>
                                </a>
                                <a href='<{$wggallery_url}>/admin/images.php?op=delete&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._DELETE}>'>
                                    <img src='<{xoModuleIcons16 delete.png}>' alt='images'>
                                </a>
                            </td>
                        </tr>
                    <{/foreach}>
                </tbody>
            <{/if}>
        </table>
    <{else}>
        <table class='table table-bordered'>
            <thead>
                <tr class='head'>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_ID}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_NAME}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_NAMELARGE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_NAMEORIG}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_MIMETYPE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_RESX}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_RESY}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_VOTES}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_WEIGHT}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_STATE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_IP}></th>
                    <{if $show_exif}><th class='center'><{$smarty.const._CO_WGGALLERY_IMAGE_EXIF}></th><{/if}>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_DATE}></th>
                    <th class='center'><{$smarty.const._CO_WGGALLERY_SUBMITTER}></th>
                    <th class='center width5'><{$smarty.const._CO_WGGALLERY_FORM_ACTION}></th>
                </tr>
            </thead>
            <{if $images_count}>
                <tbody>
                    <{foreach item=image from=$images_list}>
                        <tr class="<{cycle values='odd, even'}>">
                            <td class='center'><{$image.id}></td>
                            <td class='center'><img src='<{$image.thumb}>' style='max-height:50px' alt='<{$image.name}>'></td>
                            <td class='center'><{$image.title}></td>
                            <td class='center'><{$image.name}></td>
                            <td class='center'><{$image.namelarge}></td>
                            <td class='center'><{$image.nameorig}></td>
                            <td class='center'><{$image.mimetype}></td>
                            <td class='center'><{$image.size}></td>
                            <td class='center'><{$image.resx}></td>
                            <td class='center'><{$image.resy}></td>
                            <td class='center'><{$image.downloads}></td>
                            <td class='center'><{$image.ratinglikes}></td>
                            <td class='center'><{$image.votes}></td>
                            <td class='center'><{$image.weight}></td>
                            <td class='center'>
                                <{if $image.state == 0}>
                                    <img class='state active' src='<{$wggallery_icon_url_16}>state0.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                <{/if}>
                                <{if $image.state == 1}>
                                    <img class='state active' src='<{$wggallery_icon_url_16}>state1.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                <{/if}>
                                <{if $image.state == 2}>
                                    <img class='state active' src='<{$wggallery_icon_url_16}>state2.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_APPROVAL}>'>
                                <{/if}>
                            </td>
                            <td class='center'><{$image.ip}></td>
                            <{if $show_exif}><td class='left'><{$image.exif_short}></td><{/if}>
                            <td class='center'><{$image.date}></td>
                            <td class='center'><{$image.submitter}></td>
                            <td class='center  width10'>
                                <{if $image.state == 0}>
                                    <a href='images.php?op=change_state&amp;img_state=1&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state1.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                    </a>
                                <{/if}>
                                <{if $image.state == 1}>
                                    <a href='images.php?op=change_state&amp;img_state=0&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state0.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                    </a>
                                <{/if}>
                                <{if $image.state == 2}>
                                    <a href='images.php?op=change_state&amp;img_state=1&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state1.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_ONLINE}>'>
                                    </a>
                                    <a href='images.php?op=change_state&amp;img_state=0&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                        <img src='<{$wggallery_icon_url_16}>state0.png' alt='<{$smarty.const._CO_WGGALLERY_STATE_OFFLINE}>'>
                                    </a>
                                <{/if}>
                                <a href='<{$wggallery_url}>/admin/images.php?op=edit&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._EDIT}>'>
                                    <img src='<{xoModuleIcons16 edit.png}>' alt='images'>
                                </a>
                                <a href='<{$wggallery_url}>/admin/images.php?op=delete&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>' title='<{$smarty.const._DELETE}>'>
                                    <img src='<{xoModuleIcons16 delete.png}>' alt='images'>
                                </a>
                            </td>
                        </tr>
                    <{/foreach}>
                </tbody>
            <{/if}>
        </table>
    <{/if}>
	<div class='clear'>&nbsp;</div>
	<{if $pagenav}>
		<div class='xo-pagenav floatright'><{$pagenav}></div>
		<div class='clear spacer'></div>
	<{/if}>
<{/if}>
<br>
<!-- Footer --><{include file='db:wggallery_admin_footer.tpl'}>
