
<{if $number_cols_album == 6}>
	<div class='col-xs-12 col-sm-2'>
<{elseif $number_cols_album == 4}>
	<div class='col-xs-12 col-sm-3'>
<{elseif $number_cols_album == 3}>
	<div class='col-xs-12 col-sm-4'>
<{elseif $number_cols_album == 2}>
	<div class='col-xs-12 col-sm-6'>
<{else}>
	<div class='col-xs-12 col-sm-12'>
<{/if}>           
	<div class='center'>
		<{if $album.nb_images}>
			<{if isset($gallery)}>
				<a class='' href='<{$wggallery_url}>/gallery.php?op=show&amp;alb_id=<{$album.id}><{if isset($subm_id)}>&amp;subm_id=<{$subm_id}><{/if}>' title='<{$smarty.const._CO_WGGALLERY_IMAGES_ALBUMSHOW}>' target='<{$gallery_target}>' >
			<{else}>
				<a class='' href='<{$wggallery_url}>/images.php?op=list&amp;alb_id=<{$album.id}>&amp;alb_pid=<{$album.pid}>' title='<{$smarty.const._CO_WGGALLERY_IMAGES_INDEX}>'>
			<{/if}>
		<{/if}>
		
		<div class="simpleContainer">
			<{if $album.image}><img class="img-fluid" src="<{$album.image}>" alt="<{$album.name}>" title="<{$album.name}>"><{/if}>
			<div class="simpleContent">
				<{if isset($showTitle)}><p><{$album.name}></p><{/if}>
				<{if isset($showDesc)}><p><{$album.desc}></p><{/if}>
			</div>
		</div>
		<{if $album.nb_images}></a><{/if}>
	</div>
</div>
<{if $album.linebreak}>
	<div class='clear linebreak'>&nbsp;</div>
<{/if}>
