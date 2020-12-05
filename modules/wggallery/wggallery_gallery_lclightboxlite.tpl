<!-- Header -->

<{include file='db:wggallery_admin_header.tpl'}>

<script type='text/javascript'>
    $(document).ready(function() {
        var data = [<{if $images_nb > 0}><{foreach item=image from=$images}>                
					{
						type            : 'image',
						src             : '<{if $source == 'large'}><{$image.large}><{else}><{$image.medium}><{/if}>',
						title           : '<{$image.title}>',
						author          : '<{$image.submitter}>',
						thumb           : '<{$image.thumb}>',
						force_outer_cmd : true,
						download        : '<{if $source == 'large'}><{$image.large}><{else}><{$image.medium}><{/if}>'
					},
        <{/foreach}><{/if}>];
        
        var $instance = lc_lightbox(data, {
			gallery:true,
			slideshow:<{$lcl_slideshow}>,
            skin:'<{$lcl_skin}>',
			open_close_time : <{$speedOpen}>,
			fading_time:<{$transitionDuration}>,
			animation_time:<{$lcl_animationtime}>,
			slideshow_time:<{$slideshowSpeed}>,
			autoplay:<{$slideshowAuto}>,
			counter:<{$lcl_counter}>,
			progressbar:<{$lcl_counter}>,
			carousel:<{$lcl_carousel}>,
			max_width:'<{$lcl_maxwidth}>%',
			max_height:'<{$lcl_maxheight}>%',
			ol_opacity:<{$opacity}>,
			ol_color:'<{$lcl_backgroundcolor}>',
			border_w:<{$lcl_borderwidth}>,
			border_col:'<{$lcl_bordercolor}>',
			padding:<{$lcl_borderpadding}>,
			radius:<{$lcl_borderradius}>,
			shadow:<{$lcl_shadow}>,
			data_position:'<{$lcl_dataposition}>',
			cmd_position:'<{$lcl_cmdposition}>',
			show_title:<{$showTitle}>,
			show_descr:<{$showDescr}>,
			show_author:<{$showSubmitter}>,
			thumbs_nav:<{$showThumbnails}>,
			thumbs_w:<{$thumbsWidth}>,
			thumbs_h:<{$thumbsHeight}>,
			fullscreen:<{$lcl_fullscreen}>,
			fs_img_behavior:'<{$lcl_fsimgbehavior}>',
			socials:<{$lcl_socials}>,
			download:<{$lcl_download}>,
			modal:false,
			rclick_prevent:<{$lcl_rclickprevent}>,
            txt_toggle_cmd:<{$lcl_txttogglecmd}>,
            nav_btn_pos:'<{$lcl_navbtnpos}>',
            ins_close_pos:'corner',
			on_close:function(){history.go(-1)} 
		});
        lcl_open($instance, 0); // direct lightbox opening showing first element

        //using language variables
        lclSetAttribute("lcl_prev", "<{$smarty.const._MA_WGGALLERY_LCL_PREVIOUS}>");
        lclSetAttribute("lcl_play", "<{$smarty.const._MA_WGGALLERY_LCL_PLAY}>");
        lclSetAttribute("lcl_next", "<{$smarty.const._MA_WGGALLERY_LCL_NEXT}>");
        lclSetAttribute("lcl_counter", "<{$smarty.const._MA_WGGALLERY_LCL_COUNTER}>");
        lclSetAttribute("lcl_close", "<{$smarty.const._MA_WGGALLERY_LCL_CLOSE}>");
        lclSetAttribute("lcl_fullscreen", "<{$smarty.const._MA_WGGALLERY_LCL_FULLSCREEN}>");
        lclSetAttribute("lcl_txt_toggle", "<{$smarty.const._MA_WGGALLERY_LCL_TXT_TOGGLE}>");
        lclSetAttribute("lcl_download", "<{$smarty.const._MA_WGGALLERY_LCL_DOWNLOAD}>");
        lclSetAttribute("lcl_thumbs_toggle", "<{$smarty.const._MA_WGGALLERY_LCL_THUMBS_TOGGLE}>");
        lclSetAttribute("lcl_socials", "<{$smarty.const._MA_WGGALLERY_LCL_SOCIALS}>");  
        
    });
    $(document).on('click', '#lcl_downloadlink', function(){
        var ele = document.getElementById("lcl_downloadlink"); 
        $.ajax({
            data: 'op=lclightboxlite&src=' + ele.download,
            url: 'download.php',
            method: 'POST',
            success: function() {}
        });
    });
    
    lclSetAttribute = function(myclass, mytitle) {
        var x = document.getElementsByClassName(myclass);
        var i;
        for (i = 0; i < x.length; i++) {
          x[i].setAttribute("title", mytitle);
        } 
    };
</script>

<div style="height:<{$lcl_backgroundheight}>;">&nbsp;</div>

<div class="clear spacer"></div>

<!-- Footer -->
<{include file='db:wggallery_admin_footer.tpl'}>
