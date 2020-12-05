<!-- Header -->
<{include file='db:wggallery_admin_header.tpl'}>
<{if $watermarks_list}>
	<table class='table table-bordered'>
        <thead>
            <tr class="head">
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_ID}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_PREVIEW}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_NAME}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_TYPE}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_POSITION}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_MARGIN}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_IMAGE}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_TEXT}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_FONT}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_FONTSIZE}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_COLOR}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_USAGE}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_WATERMARK_TARGET}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_DATE}></th>
                <th class="center"><{$smarty.const._CO_WGGALLERY_SUBMITTER}></th>
                <th class="center width5"><{$smarty.const._CO_WGGALLERY_FORM_ACTION}></th>
            </tr>
        </thead>
        <{if $watermarks_count}>
        	<tbody>
                <{foreach item=watermark from=$watermarks_list}>
                    <tr class="<{cycle values='odd, even'}>">
                        <td class='center'><{$watermark.id}></td>
                        <td class="center">
                            <a href="watermarks.php?op=edit&amp;wm_id=<{$watermark.id}>" title="<{$smarty.const._CO_WGGALLERY_WATERMARK_PREVIEW}>">
                                <img src="<{$wggallery_upload_url}>/images/watermarks-test/wmtest<{$watermark.id}>.jpg" class="img-fluid" style="max-width:150px" alt="<{$smarty.const._CO_WGGALLERY_WATERMARK_PREVIEW}>">
                            </a>
                        </td>
                        <td class="center"><{$watermark.name}></td>
                        <td class="center"><{$watermark.type_text}></td>
                        <td class="center"><{$watermark.position_text}></td>
                        <td class="center"><{$watermark.marginlr}>/<{$watermark.margintb}></td>
                        <td class="center"><img src="<{$wggallery_upload_url}>/images/watermarks/<{$watermark.image}>" alt="watermarks" style="max-width:100px"></td>
                        <td class="center"><{$watermark.text}></td>
                        <td class="center"><{$watermark.font}></td>
                        <td class="center"><{$watermark.fontsize}></td>
                        <td class="center"><span style="width:10px;background-color:<{$watermark.color}>">&nbsp;&nbsp;&nbsp;</span></td>
                        <td class="center"><{$watermark.usage_text}></td>
                        <td class="center"><{$watermark.target_text}></td>
                        <td class="center"><{$watermark.date}></td>
                        <td class="center"><{$watermark.submitter}></td>
                        <td class="center  width5">
                            <a href="watermarks.php?op=edit&amp;wm_id=<{$watermark.id}>" title="<{$smarty.const._EDIT}>">
                                <img src="<{xoModuleIcons16 edit.png}>" alt="watermarks">
                            </a>
                            <a href="watermarks.php?op=delete&amp;wm_id=<{$watermark.id}>" title="<{$smarty.const._DELETE}>">
                                <img src="<{xoModuleIcons16 delete.png}>" alt="watermarks">
                            </a>
                        </td>
                    </tr>
                <{/foreach}>
            </tbody>
        <{/if}>
    </table>
    <div class="clear">&nbsp;</div>
    <{if $pagenav}>
        <div class="xo-pagenav floatright"><{$pagenav}></div>
        <div class="clear spacer"></div>
    <{/if}>
<{/if}>
<{if $form}>
    <{if $imgTest}>
        <img src="<{$wggallery_upload_url}>/images/watermarks-test/<{$imgTest}>" alt="watermarks" class="img-fluid center" style="max-width:400px">
    <{/if}>
	<{$form}>
<{/if}>
<{if $error}>
	<div class="errorMsg"><strong><{$error}></strong></div>
<{/if}>
<br>
<!-- Footer --><{include file='db:wggallery_admin_footer.tpl'}>
