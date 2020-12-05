<{include file='db:wggallery_header.tpl'}>

<div class='panel panel-<{$panel_type}>'>
        <div class='panel-heading wgg-imgindex-header'>
            <h3><{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE}> <{$alb_name}></h3>
            <p><{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE_DESC}></p>
        </div>
        <div class=' panel-body'>
            <{if $images}>
                <ol class="sortable ui-sortable mjs-nestedSortable-branch mjs-nestedSortable-expanded">
                    <{foreach item=image from=$images}>
                        <li style="display: list-item;" class="mjs-nestedSortable-branch mjs-nestedSortable-collapsed mjs-nestedSortable-leaf" id="menuItem_<{$image.id}>">
                            <div class="menuDiv ui-sortable-handle">
                                <div class='col-xs-1 wgg-img-sort'><img id='image_<{$image.id}>' src='<{$wggallery_icon_url_16}>/drag.png' alt='drag&drop'></div>
                                <div class='col-xs-2 wgg-img-sort'><img class='img-fluid' src='<{$image.thumb}>' alt='<{$image.title}>'></div>
                                <div class='col-xs-3 wgg-img-sort'><{$image.title}></div>
                                <div class='col-xs-1 wgg-img-sort'><{$image.date}></div>
								<div class='col-xs-5 wgg-img-sort right'>
									<a class='btn btn-secondary wgg-btn-small' href='<{$wggallery_url}>/images.php?op=show&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;start=<{$start}>&amp;limit=<{$limit}>&amp;img_submitter=<{$img_submitter}>&amp;redir_op=manage' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}>'>
										<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/show.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}>'>
									</a>
									<a class='btn btn-secondary wgg-btn-small' href='<{$wggallery_url}>/images.php?op=edit&amp;img_id=<{$image.id}>&amp;redir_op=manage' title='<{$smarty.const._EDIT}>'>
										<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/edit.png' alt='<{$smarty.const._EDIT}>'>
									</a>
									<a class='btn btn-secondary wgg-btn-small' href='<{$wggallery_url}>/images.php?op=delete&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;alb_pid=<{$alb_pid}>&amp;redir_op=manage' title='<{$smarty.const._DELETE}>'>
										<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/delete.png' alt='<{$smarty.const._DELETE}>'>
									</a>
									<a class='btn btn-secondary wgg-btn-small' href='<{$wggallery_url}>/download.php?op=default&amp;img_id=<{$image.id}>&amp;redir_op=manage' title='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
										<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/download.png' alt='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
									</a>
							
								</div>
                                <div class='clear wgg-img-sort-clear'></div>
                            </div>
                        </li>
                    <{/foreach}>
                </ol>            
            <{else if $showlist}>
                <div class=''>
                    <div class='errorMsg'><strong><{$smarty.const._CO_WGGALLERY_THEREARENT_IMAGES}></strong></div>
                </div>
            <{/if}>   
            <div class='clear'>&nbsp;</div>
            <div class='wgg-goback'>
                <a class='btn btn-secondary wgg-btn' href='<{if $ref}><{$ref}><{else}>images<{/if}>.php?op=<{if $redir_op}><{$redir_op}><{else}>list<{/if}>&amp;alb_id=<{$alb_id}>&amp;alb_pid=<{$alb_pid}>' title='<{$smarty.const._CO_WGGALLERY_BACK}>'>
                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/back.png' alt='<{$smarty.const._CO_WGGALLERY_BACK}>'>
					<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_BACK}><{/if}>
                </a>

                </div>
        </div>
        <div class='clear'>&nbsp;</div>
            <{if $pagenav}>
                <div class='xo-pagenav floatright'><{$pagenav}></div>
                <div class='clear spacer'></div>
            <{/if}>
        </div>
</div>

<{if $error}>
	<div class='errorMsg'><strong><{$error}></strong></div>
<{/if}>

<{include file='db:wggallery_footer.tpl'}>
