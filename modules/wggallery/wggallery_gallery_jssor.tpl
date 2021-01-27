<!-- Header -->

<{include file='db:wggallery_admin_header.tpl'}>

<!-- #region Jssor Slider Begin -->
<!-- Generator: Jssor Slider Maker -->
<!-- Source: https://www.jssor.com -->

<script type="text/javascript">
	jQuery(document).ready(function ($) {

        var jssor_<{$uniqid}>_SlideshowTransitions = [<{$jssor_transition}>];
            
		var jssor_<{$uniqid}>_options = {
            $AutoPlay: <{$jssor_autoplay}>, 
            $AutoPlaySteps: 1,
            $Idle: <{$slideshowSpeed}>,
            $SlideDuration: <{$transitionDuration}>, 
            $FillMode: <{$jssor_fillmode}>, 
            $SlideSpacing: 3,
            $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_<{$uniqid}>_SlideshowTransitions,
                $TransitionsOrder: <{$jssor_transitionorder}>
              },
            <{if $jssor_arrows}>
                $ArrowNavigatorOptions: {                   //[Optional] Options to specify and enable arrow navigator or not
                    $Class: $JssorArrowNavigator$,          //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 2,                       //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                         //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1                               //[Optional] Steps to go for each navigation request, default value is 1
                },
            <{/if}>
            <{if $jssor_bullets}>
                $BulletNavigatorOptions: {                  //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,         //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                       //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 1,                         //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                              //[Optional] Steps to go for each navigation request, default value is 1
                    $Rows: 1,                               //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                          //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10,                          //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                         //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                },
            <{/if}>
            <{if $jssor_thumbnails}>
                $ThumbnailNavigatorOptions: {               //[Optional] Options to specify and enable thumbnail navigator or not
                    $Class: $JssorThumbnailNavigator$,      //[Required] Class to create thumbnail navigator instance
                    $ChanceToShow: 2,                       //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $ActionMode: 1,                         //[Optional] 0 None, 1 act by click, 2 act by mouse hover, 3 both, default value is 1
                    $SpacingX: 0,                           //[Optional] Horizontal space between each thumbnail in pixel, default value is 0
                    $Cols: 5,                               //[Optional] Number of pieces to display, default value is 1
					$Orientation: <{$jssor_thumborient}>,   //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                    $Align: 400                             //[Optional] The offset position to park thumbnail
                }
            <{/if}>
		};

		var jssor_<{$uniqid}>_slider = new $JssorSlider$("jssor_<{$uniqid}>", jssor_<{$uniqid}>_options);

		/*#region responsive code begin*/

		var MAX_WIDTH = <{$jssor_maxwidth_js}>;

		function ScaleSlider() {
			var containerElement = jssor_<{$uniqid}>_slider.$Elmt.parentNode;
			var containerWidth = containerElement.clientWidth;
			if (containerWidth) {
				var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);
				jssor_<{$uniqid}>_slider.$ScaleWidth(expectedWidth);
			}
			else {
				window.setTimeout(ScaleSlider, 30);
			}
		}

		ScaleSlider();

		$(window).bind("load", ScaleSlider);
		$(window).bind("resize", ScaleSlider);
		$(window).bind("orientationchange", ScaleSlider);
		/*#endregion responsive code end*/
	});
</script>

    <div id="jssor_<{$uniqid}>" style="position:relative;margin:0 auto;top:0;left:0;width:<{$jssor_maxwidth}>px;height:<{$jssor_maxheight}>px;overflow:hidden;visibility:hidden;" >
        <!-- Loading Screen -->
        <{include file='db:wggallery_gallery_jssor_loadings.tpl'}>
		
		<!-- Slides -->
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:<{$jssor_maxwidth}>px;height:<{$jssor_maxheight}>px;overflow:hidden;">
			<{if $images_nb > 0}>
				<{foreach item=image from=$images}>                
					<div>
						<img data-u="image" src="<{if $source == 'large'}><{$image.large}><{else}><{$image.medium}><{/if}>">
						<{if $jssor_thumbnails}>
							<{if $jssor_thumbnails == 'thumbnail-091' || $jssor_thumbnails == 'thumbnail-092'}>
								<div u="thumb"><{$image.desc}></div>
							<{elseif $jssor_thumbnails == 'thumbnail-111'}>
                                <div data-u="thumb">
                                    <img data-u="thumb" src="<{$image.thumb}>">
                                    <div class="ti"><{$image.title}></div>
                                </div>
                            <{elseif $jssor_thumbnails == 'thumbnail-121'}>
                                <div data-u="thumb">
                                    <img data-u="thumb" class="i" src="<{$image.thumb}>">
                                    <span class="ti"><{$image.title}></span>
                                    <br><span class="d"><{$image.desc}></span>
                                </div>
                            <{else}>
								<img data-u="thumb" src="<{$image.thumb}>">
							<{/if}>
						<{/if}>
					</div>
				<{/foreach}>
			<{/if}> 
        </div>
		
        <!-- Bullet Navigator -->
        <{include file='db:wggallery_gallery_jssor_bullets.tpl'}>
		
        <!-- Arrow Navigator -->
		<{include file='db:wggallery_gallery_jssor_arrows.tpl'}>
		
		<!-- Thumbs Container -->
		<{include file='db:wggallery_gallery_jssor_thumbnails.tpl'}>
    </div>
    <!-- #endregion Jssor Slider End -->

	<!-- Trigger -->
	<script>
		init_jssor_slider1("jssor_<{$uniqid}>");
	</script>

<div class="clear spacer"></div>

<!-- Footer -->
<{include file='db:wggallery_admin_footer.tpl'}>
