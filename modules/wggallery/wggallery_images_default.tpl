<{include file='db:wggallery_header.tpl'}>

<div class='panel panel-<{$panel_type}>'>
	<{if $showlist}>
        <div class='panel-heading wgg-imgindex-header'><{$smarty.const._CO_WGGALLERY_IMAGES_TITLE}> <{$alb_name}></div>
        <div class=' panel-body'>
            <{if $images}>
                <{foreach item=image from=$images}>
                    <div class='row wgg-img-panel wgg-image-list'>
                        <div class='wgg-img-panel-row col-sm-8'>
                            <{if $image.medium}>
                                <div class='center'><img id='image_<{$image.id}>' class='img-fluid wgg-img' src='<{$image.medium}>' alt='<{$image.title}>'></div>
                            <{/if}>
                        </div>
                        <div class='wgg-img-panel-row col-sm-4'>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/photos.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>'><{$image.title}></p>
                            <{if $image.desc}>
                                <p class='justify'><{$image.desc}></p>
                            <{/if}>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/size.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.size}> kb</p>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/dimension.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.resx}>px / <{$image.resy}>px</p>
                            <{if $img_allowdownload}>
                                <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/download.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>'><{$image.downloads}></p>
                            <{/if}>
							<{if $show_rating}>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/rate.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>'><{$image.ratinglikes}> (<{$image.votes}> <{$smarty.const._CO_WGGALLERY_IMAGE_VOTES}>)</p>
							<{/if}>
							<{if $permAlbumEdit}>
								<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/state<{$image.state}>.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>'><{$image.state_text}></p>
                            <{/if}>
							<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/date.png' alt='<{$smarty.const._CO_WGGALLERY_DATE}>' title='<{$smarty.const._CO_WGGALLERY_DATE}>'><{$image.date}></p>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/submitter.png' alt='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>' title='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>'><{$image.submitter}></p>
                        </div>
                        <div class='wgg-img-panel-row col-sm-12 center'>
                            <a class='btn btn-secondary wgg-btn' href='<{$wggallery_url}>/images.php?op=show&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;start=<{$start}>&amp;limit=<{$limit}>&amp;img_submitter=<{$img_submitter}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}>'>
                                <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/show.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}>'>
								<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}><{/if}>
                            </a>
                            <{if $permAlbumEdit}>
                                <a class='btn btn-secondary wgg-btn' href='<{$wggallery_url}>/images.php?op=edit&amp;img_id=<{$image.id}>' title='<{$smarty.const._EDIT}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/edit.png' alt='<{$smarty.const._EDIT}>'>
									<{if $displayButtonText}><{$smarty.const._EDIT}><{/if}>
                                </a>
                                <a class='btn btn-secondary wgg-btn' href='<{$wggallery_url}>/images.php?op=delete&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;alb_pid=<{$alb_pid}>' title='<{$smarty.const._DELETE}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/delete.png' alt='<{$smarty.const._DELETE}>'>
									<{if $displayButtonText}><{$smarty.const._DELETE}><{/if}>
                                </a>
                            <{/if}>
                            <{if $img_allowdownload}>
                                <a class='btn btn-secondary wgg-btn' href='<{$wggallery_url}>/download.php?op=default&amp;img_id=<{$image.id}>' title='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/download.png' alt='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
									<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_DOWNLOAD}><{/if}>
                                </a>
                            <{/if}>
                        </div>
                    </div>
                <{/foreach}>
            <{else if $showlist}>
                <div class=''>
                    <div class='errorMsg'><strong><{$smarty.const._CO_WGGALLERY_THEREARENT_IMAGES}></strong></div>
                </div>
            <{/if}>
            <div class='clear'>&nbsp;</div>
            <div class='wgg-goback'>
                <a class='btn btn-secondary wgg-btn' href='<{if $ref}><{$ref}><{else}>index<{/if}>.php?op=list&amp;alb_id=<{$alb_id}>&amp;alb_pid=<{$alb_pid}>#album_<{$alb_id}>' title='<{$smarty.const._CO_WGGALLERY_BACK}>'>
                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/back.png' alt='<{$smarty.const._CO_WGGALLERY_BACK}>'>
					<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_BACK}><{/if}>
                </a>
                <{if $permAlbumEdit}>
                    <a class='btn btn-secondary wgg-btn' href='albums.php?op=edit&amp;alb_id=<{$alb_id}>' title='<{$smarty.const._CO_WGGALLERY_ALBUM_EDIT}>'>
                        <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/edit.png' alt='<{$smarty.const._CO_WGGALLERY_ALBUM_EDIT}>'>
						<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_ALBUM_EDIT}><{/if}>
                    </a>
                    <a class='btn btn-secondary wgg-btn' href='images.php?op=manage&amp;alb_id=<{$alb_id}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE}>'>
                        <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/images.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE}>'>
						<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE}><{/if}>
                    </a>
                    <a class='btn btn-secondary wgg-btn' href='upload.php?op=list&amp;alb_id=<{$alb_id}>' title='<{$smarty.const._CO_WGGALLERY_IMAGES_UPLOAD}>'>
                        <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/upload.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGES_UPLOAD}>'>
						<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_IMAGES_UPLOAD}><{/if}>
                    </a>
                <{/if}>
            </div>
        </div>
        <div class='clear'>&nbsp;</div>
            <{if $pagenav|default:false}>
                <div class='xo-pagenav floatright'><{$pagenav}></div>
                <div class='clear spacer'></div>
            <{/if}>
        </div>
    <{/if}>
    <{if $showimage}>
        <div class='wgg-img-panel-row col-xs-12 col-sm-12 col-md-12 col-lg-12 center'><img class='img-fluid wgg-img' src='<{$file}>' alt='<{$image.title}>'></div>
        <div class='wgg-img-panel-row col-xs-12 col-sm-6 col-md-6 col-lg6'>
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/photos.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>'><{$image.title}></p>
            <{if $image.desc}>
                <p class='justify'><{$image.desc}></p>
            <{/if}>
        </div>
        <div class='wgg-img-panel-row col-xs-12 col-sm-6 col-md-6 col-lg6'>          
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/size.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.size}> kb</p>
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/dimension.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.resx}>px / <{$image.resy}>px</p>
            <{if $img_allowdownload}>
                <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/download.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>'><{$image.downloads}></p>
            <{/if}>
			<{if $show_rating}>
				<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/rate.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>'><{$image.ratinglikes}> (<{$image.votes}> <{$smarty.const._CO_WGGALLERY_IMAGE_VOTES}>)</p>
			<{/if}>
			<{if $permAlbumEdit}>
				<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/state<{$image.state}>.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>'><{$image.state_text}></p>
            <{/if}>
			<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/date.png' alt='<{$smarty.const._CO_WGGALLERY_DATE}>' title='<{$smarty.const._CO_WGGALLERY_DATE}>'><{$image.date}></p>
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/submitter.png' alt='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>' title='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>'><{$image.submitter}></p>
        </div>
		<div class='wgg-img-panel-row col-sm-12 center'>
			<a class='btn btn-secondary wgg-btn' href='images.php?op=<{if $redir_op}><{$redir_op}><{else}>list<{/if}>&amp;alb_id=<{$alb_id}>&amp;alb_pid=<{$alb_pid}>&amp;start=<{$start}>&amp;limit=<{$limit}>&amp;img_submitter=<{$img_submitter}>#image_<{$image.id}>' title='<{$smarty.const._CO_WGGALLERY_BACK}>'>
                <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/back.png' alt='<{$smarty.const._CO_WGGALLERY_BACK}>'>
				<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_BACK}><{/if}>
            </a>
			<{if $permAlbumEdit}>
				<a class='btn btn-secondary wgg-btn' href='<{$wggallery_url}>/images.php?op=edit&amp;img_id=<{$image.id}>' title='<{$smarty.const._EDIT}>'>
					<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/edit.png' alt='<{$smarty.const._EDIT}>'>
					<{if $displayButtonText}><{$smarty.const._EDIT}><{/if}>
				</a>
				<a class='btn btn-secondary wgg-btn' href='<{$wggallery_url}>/images.php?op=delete&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;alb_pid=<{$alb_pid}>' title='<{$smarty.const._DELETE}>'>
					<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/delete.png' alt='<{$smarty.const._DELETE}>'>
					<{if $displayButtonText}><{$smarty.const._DELETE}><{/if}>
				</a>
			<{/if}>
			<{if $img_allowdownload}>
				<a class='btn btn-secondary wgg-btn' href='<{$wggallery_url}>/download.php?op=default&amp;img_id=<{$image.id}>' title='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
					<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/download.png' alt='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
					<{if $displayButtonText}><{$smarty.const._CO_WGGALLERY_DOWNLOAD}><{/if}>
				</a>
			<{/if}>
		</div>

        <{$commentsnav}> <{$lang_notice}>
        <{*<{if $comment_mode == "flat"}> <{include file="db:system_comments_flat.tpl"}> <{elseif $comment_mode == "thread"}> <{include file="db:system_comments_thread.tpl"}> <{elseif $comment_mode == "nest"}> <{include file="db:system_comments_nest.tpl"}> <{/if}>*}>


    <{/if}>
</div>

<{if $form}>
	<{$form}>
<{/if}>
<{if $error}>
	<div class='errorMsg'><strong><{$error}></strong></div>
<{/if}>
<{include file='db:wggallery_footer.tpl'}>
