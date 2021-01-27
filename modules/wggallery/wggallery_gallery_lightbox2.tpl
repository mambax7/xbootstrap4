<!-- Header -->
<{include file='db:wggallery_admin_header.tpl'}>

<style>
	.lightbox-image-preview {
		margin: 0 1px 5px 0;
		border:1px solid #ccc;
	}
	.fixedHeight{
		height:<{$indexImageheight}>px;
	}
	.squareSize {
		height:<{$indexImageheight}>px;
		width:<{$indexImageheight}>px;
	}
	<{if $indexImage == 'simpleContainer'}>
		.simpleContainer {
			position: relative;
			display: inline-block;
			height:<{$indexImageheight}>px;
			margin: 0 1px 5px 0;
		}
		.simpleContainer img {
			position: relative;
			display: inline-block;
			max-height:<{$indexImageheight}>px;
		}
		.simpleContainer .simpleContent {
			position: absolute; /* Position the background text */
			bottom: 0; /* At the bottom. Use top:0 to append it to the top */
			background: rgba(255, 255, 255, 0.5); /* Black background with 0.5 opacity */
			color: #f1f1f1; /* Grey text */
			width: 100%; /* Full width */
			padding: 5px; /* Some padding */
		}
	<{/if}> 
</style>
<script>
    lightbox.option({
      'alwaysShowNavOnTouchDevices': true,
	  'showImageNumberLabel':<{$showAlbumlabel}>
	  'albumLabel':'<{$albumLabel}>',
	  'imageFadeDuration':<{$slideshowSpeed}>,
	  'fadeDuration':<{$speedOpen}>,
	  'positionFromTop': 50,
	  'resizeDuration': 400,
      'wrapAround': true
    })
</script>

<{if $images_nb > 0}>
	<div class='clear'></div>
	<!-- Images used to open the lightbox -->
	<div>
		<{foreach item=image from=$images name=images}>
			<a class="lightbox-image-link" href="<{if $source == 'large'}><{$image.large}><{else}><{$image.medium}><{/if}>" data-lightbox="lightbox2-set" 
			<{if $showDescr}> data-title="<{$image.desc}>"<{/if}> >
				<{if $indexImage == 'simpleContainer'}>
					<div class="simpleContainer">
						<img class="img-fluid" src="<{if $source_preview == 'medium'}><{$image.medium}><{else}><{$image.thumb}><{/if}>" alt="<{$image.title}>" title="<{$image.title}>">
						<div class="simpleContent">
							<{if $showTitle}><p><{$image.title}></p><{/if}>
							<{if $showDescr}><p><{$image.desc}></p><{/if}>
						</div>
					</div>
				<{else}> 
					<img class="lightbox-image-preview <{$indexImage}>" src="<{if $source_preview == 'medium'}><{$image.medium}><{else}><{$image.thumb}><{/if}>" alt="<{$image.title}>">
				<{/if}> 
			</a>
		<{/foreach}>
	</div>
<{/if}> 	

<div class="clear spacer"></div>

<{if $error}>
	<div class="errorMsg"><strong><{$error}></strong></div>
<{/if}> 

<!-- Footer -->
<{include file='db:wggallery_admin_footer.tpl'}>
