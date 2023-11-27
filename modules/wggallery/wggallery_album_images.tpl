<{include file='db:wggallery_header.tpl'}>

<style>
    .btn-crop {
        margin:5px 0;
    }
    .selimages {
        margin:0 !important;
        padding:2px !important;
    }
</style>

	<div id='imghandler' class='col-xs-12 col-sm-12'>
		<ul class='nav nav-tabs'>
			<li class='active'><a id='navtab_main' href='#1' data-toggle='tab'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_CURRENT}></a></li>
			<li><a id='navtab_exist' href='#2' data-toggle='tab'><{$smarty.const._CO_WGGALLERY_ALBUM_USE_EXIST}></a></li>
			<li><a id='navtab_grid' href='#3' data-toggle='tab'><{$smarty.const._CO_WGGALLERY_ALBUM_CREATE_GRID}></a></li>
			<li><a id='navtab_crop' href='#4' data-toggle='tab'><{$smarty.const._CO_WGGALLERY_ALBUM_CROP_IMAGE}></a></li>
            <li><a id='navtab_upload' href='#5' data-toggle='tab'><{$smarty.const._CO_WGGALLERY_ALBUM_FORM_UPLOAD_IMAGE}></a></li>
		</ul>

		<div class='tab-content '>
			<!-- *************** Basic Tab ***************-->
            <div class='tab-pane active center' id='1'>
				<img id='currentImg' class='img-fluid wgg-album-img' src='<{$album.image}>' alt='<{$album.name}>'>
                <input type='button' class='btn <{$btn_style}>' value='<{$smarty.const._CANCEL}>' onclick='history.go(-1);return true;'>
			</div>
            
            <!-- *************** Tab for select image of albums ***************-->
			<div class='tab-pane' id='2'>
                <div class='col-xs-12 col-sm-6'>
                    <{foreach item=image from=$images|default:null}>
                        <{if $image.alb_name}><div class='selimages col-xs-12 col-sm-12'><h5 class='modal-title' style='width:100%'><{$image.alb_name}></h5></div><{/if}>
                        <div class='selimages col-xs-12 col-sm-4'>
                        <input id='<{$image.id}>' class='imgSelect1 img-fluid wgg-album-img <{if $image.selected}>wgg-modal-selected<{/if}>' type='image' src='<{$image.thumb}>' alt='<{$image.title}>' style='padding:3px;' value='<{$image.name}>'>
                        </div>
                    <{/foreach}>
                </div>
                <div class='col-xs-12 col-sm-6'>
                    <h5>&nbsp;</h5>
                    <img id='albImgSelected' class='img-fluid wgg-album-img' src='<{$album.image}>' alt='<{$album.name}>'>
                </div>
                <div class='col-xs-12 col-sm-12 center'>
					<form class='form-horizontal' name='form' id='form_selectalbimage' action='album_images.php' method='post' enctype='multipart/form-data'>
						<input type='hidden' name='alb_imgid' id='alb_imgid' value='<{$album.alb_imgid}>'>	
						<input type='hidden' name='op' id='op' value='saveAlbumImage'>
						<input type='hidden' name='alb_id' value='<{$album.id}>'>
						<input type='hidden' name='alb_pid' value='<{$album.alb_pid}>'>
						<input type='hidden' name='alb_state' value='<{$album.alb_state}>'>
						<input type="submit" class="btn <{$btn_style}> disabled" name="btnApplySelected" id="btnApplySelected" value="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_APPLY}>">
					</form>
                </div>
			</div>
            
            <!-- *************** Tab for image grid ***************-->
			<div class='tab-pane' id='3'>
				<div class='col-xs-12 col-sm-12'>
					<label class='radio-inline'><input type='radio' name='gridtype' id='alb_imgcat1' title='<{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID4}>' value='1' checked onchange='changeGridSetting(this)'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID4}>&nbsp;</label>
					<label class='radio-inline'><input type='radio' name='gridtype' id='alb_imgcat2' title='<{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID6}>' value='2' onchange='changeGridSetting(this)'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID6}>&nbsp;</label>
				</div>
				<div class='col-xs-12 col-sm-4'>
					<button id='btnGridAdd1' type='button' class='btn <{$btn_style}>' style='display:inline;margin:5px' data-toggle='modal' data-target='#myModalImagePicker1'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_SRC1}></button>
					<img src='<{$wggallery_upload_image_url}>/medium/blank.gif' name='imageGrid1' id='imageGrid1' alt='imageGrid1' style='margin:5px;max-width:75px'>
					<br>
					<button id='btnGridAdd2' type='button' class='btn <{$btn_style}>' style='display:inline;margin:5px' data-toggle='modal' data-target='#myModalImagePicker2'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_SRC2}></button>
					<img src='<{$wggallery_upload_image_url}>/medium/blank.gif' name='imageGrid2' id='imageGrid2' alt='imageGrid2' style='margin:5px;max-width:75px'>
					<br>
					<button id='btnGridAdd3' type='button' class='btn <{$btn_style}>' style='display:inline;margin:5px' data-toggle='modal' data-target='#myModalImagePicker3'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_SRC3}></button>
					<img src='<{$wggallery_upload_image_url}>/medium/blank.gif' name='imageGrid3' id='imageGrid3' alt='imageGrid3' style='margin:5px;max-width:75px'>
					<br>
					<button id='btnGridAdd4' type='button' class='btn <{$btn_style}>' style='display:inline;margin:5px' data-toggle='modal' data-target='#myModalImagePicker4'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_SRC4}></button>
					<img src='<{$wggallery_upload_image_url}>/medium/blank.gif' name='imageGrid4' id='imageGrid4' alt='imageGrid4' style='margin:5px;max-width:75px'>
					<br>
					<button id='btnGridAdd5' type='button' class='btn <{$btn_style}>' style='display:inline;margin:5px' data-toggle='modal' data-target='#myModalImagePicker5' disabled='disabled'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_SRC5}></button>
					<img src='<{$wggallery_upload_image_url}>/medium/blank.gif' name='imageGrid5' id='imageGrid5' alt='imageGrid5' style='margin:5px;max-width:75px'>
					<br>
					<button id='btnGridAdd6' type='button' class='btn <{$btn_style}>' style='display:inline;margin:5px' data-toggle='modal' data-target='#myModalImagePicker6' disabled='disabled'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_SRC6}></button>
					<img src='<{$wggallery_upload_image_url}>/medium/blank.gif' name='imageGrid6' id='imageGrid6' alt='imageGrid6' style='margin:5px;max-width:75px'>
				</div>
                <div class='col-xs-12 col-sm-8'>
                    <img id='gridImg' class='img-fluid' src='<{$wggallery_upload_image_url}>/temp/blank.gif' alt='<{$album.name}>'>
                </div>
				<div class='col-xs-12 col-sm-12 center'>
					<button id='btnCreateGrid4' type='button' class='btn <{$btn_style}>' style='display:inline;margin:5px'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_CREATE}></button>
					<button id='btnCreateGrid6' type='button' class='btn <{$btn_style}> hidden' style='display:inline;margin:5px'><{$smarty.const._CO_WGGALLERY_ALBUM_IH_GRID_CREATE}></button>
					<form class='form-horizontal' name='form' id='form_selectalbimage' action='album_images.php' method='post' enctype='multipart/form-data'>
						<input type='hidden' name='op' value='saveGrid'>
						<input type='hidden' name='alb_id' value='<{$album.id}>'>
						<input type='hidden' name='alb_pid' value='<{$album.alb_pid}>'>
						<input type='hidden' name='alb_state' value='<{$album.alb_state}>'>
						<input type="submit" class="btn <{$btn_style}> disabled" name="btnApplyGrid" id="btnApplyGrid" value="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_APPLY}>">
					</form>
				</div>
			</div>
			
			<!-- ***************Tab for crop image ***************-->
			<div class='tab-pane center' id='4' >
                <input type='hidden' name='alb_id' id='alb_id' value='<{$album.id}>'>
                <!-- Content -->
                <div class="container-crop">
                    <div class="row">
                        <div class="img-container">
                            <img id='cropImg' class="img-fluid" src="<{$album.image}>" alt="<{$album.name}>">
                        </div>
                    </div>
                </div>
                <div class="row" id="actions">
					<div class="col-md-12 docs-toggles">
						<!-- <h3>Toggles:</h3> -->
                        <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
                            <label class="btn btn-crop <{$btn_style}> active">
                                <input type="radio" class="sr-only" id="aspectRatio1" name="aspectRatio" value="1.7777777777777777">
                                <span class="docs-tooltip" data-toggle="tooltip" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ASPECTRATIO}>: 16 / 9">16:9</span>
                            </label>
                            <label class="btn btn-crop <{$btn_style}>">
                                <input type="radio" class="sr-only" id="aspectRatio2" name="aspectRatio" value="1.3333333333333333">
                                <span class="docs-tooltip" data-toggle="tooltip" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ASPECTRATIO}>: 4 / 3">4:3</span>
                            </label>
                            <label class="btn btn-crop <{$btn_style}>">
                                <input type="radio" class="sr-only" id="aspectRatio3" name="aspectRatio" value="1">
                                <span class="docs-tooltip" data-toggle="tooltip" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ASPECTRATIO}>: 1 / 1">1:1</span>
                            </label>
                            <label class="btn btn-crop <{$btn_style}>">
                                <input type="radio" class="sr-only" id="aspectRatio4" name="aspectRatio" value="0.6666666666666666">
                                <span class="docs-tooltip" data-toggle="tooltip" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ASPECTRATIO}>: 2 / 3">2:3</span>
                            </label>
                            <label class="btn btn-crop <{$btn_style}>">
                                <input type="radio" class="sr-only" id="aspectRatio5" name="aspectRatio" value="NaN">
                                <span class="docs-tooltip" data-toggle="tooltip" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ASPECTRATIO}>: NaN"><{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ASPECTRATIO_FREE}></span>
                            </label>
                        </div>
                    </div><!-- /.docs-toggles -->
                    <div class="col-md-12 docs-buttons">
                        <!-- <h3>Toolbar:</h3> -->
                        <div class="btn-group">
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="setDragMode" data-option="move" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_MOVE}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.setDragMode(&quot;move&quot;)"><span class="fa fa-arrows"></span></span>
                            </button>
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="setDragMode" data-option="crop" title="Crop">
								<span class="docs-tooltip" data-toggle="tooltip" title="cropper.setDragMode(&quot;crop&quot;)"><span class="fa fa-crop"></span>
								</span>
							</button>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="zoom" data-option="0.1" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ZOOMIN}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoom(0.1)"><span class="fa fa-search-plus"></span></span>
                            </button>
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="zoom" data-option="-0.1" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ZOOMOUT}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.zoom(-0.1)"><span class="fa fa-search-minus"></span></span>
                            </button>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="move" data-option="-10" data-second-option="0" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_MOVE_LEFT}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(-10, 0)"><span class="fa fa-arrow-left"></span></span>
                            </button>
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="move" data-option="10" data-second-option="0" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_MOVE_RIGHT}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(10, 0)"><span class="fa fa-arrow-right"></span></span>
                            </button>
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="move" data-option="0" data-second-option="-10" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_MOVE_UP}>"><span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(0, -10)"><span class="fa fa-arrow-up"></span></span>
                            </button>
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="move" data-option="0" data-second-option="10" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_MOVE_DOWN}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.move(0, 10)"><span class="fa fa-arrow-down"></span></span>
                            </button>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="rotate" data-option="-45" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ROTATE_LEFT}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotate(-45)"><span class="fa fa-rotate-left"></span></span>
                            </button>
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="rotate" data-option="45" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_ROTATE_RIGHT}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.rotate(45)"><span class="fa fa-rotate-right"></span></span>
                            </button>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="scaleX" data-option="-1" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_FLIP_HORIZONTAL}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scaleX(-1)"><span class="fa fa-arrows-h"></span></span>
                            </button>
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="scaleY" data-option="-1" title="<{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_FLIP_VERTICAL}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.scaleY(-1)"><span class="fa fa-arrows-v"></span></span>
                            </button>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="reset" title="<{$smarty.const._RESET}>">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.reset()"><span class="fa fa-refresh"></span></span>
                            </button>
                        </div>
                        <div class="btn-group">
                            <label class="btn <{$btn_style}> btn-upload" for="inputImage" title="<{$smarty.const._UPLOAD}>">
                                <input type="file" class="sr-only" id="inputImage" name="file" accept="image/*">
                                <span class="docs-tooltip" data-toggle="tooltip" title="Import image with Blob URLs"><span class="fa fa-upload"></span></span>
                            </label>
                        </div>

                        <div class="btn-group-horizontal btn-group-crop col-xs-12 col-sm-12">
                            <button type="button" class="btn btn-crop <{$btn_style}>" data-method="getCroppedCanvas" data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096, &quot;save&quot;: 0 }">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ maxWidth: 4096, maxHeight: 4096 })"><{$smarty.const._PREVIEW}></span>
                            </button>
                            <button id="btnCropCreate" type="button" class="btn btn-crop <{$btn_style}>" data-method="getCroppedCanvas" data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096, &quot;save&quot;: 1 }">
                                <span class="docs-tooltip" data-toggle="tooltip" title="cropper.getCroppedCanvas({ maxWidth: 4096, maxHeight: 4096 })"><{$smarty.const._CO_WGGALLERY_ALBUM_IH_CROP_CREATE}></span>
                            </button>
                            <a class="btn <{$btn_style}> disabled" id="btnCropApply" href="<{$wggallery_url}>/album_images.php?op=saveCrop&alb_id=<{$album.alb_id}>&alb_pid=<{$album.alb_pid}>" ><{$smarty.const._CO_WGGALLERY_ALBUM_IH_APPLY}></a>
                        </div>

                        <!-- Show the cropped image in modal -->
                        <div class="modal fade docs-cropped" id="getCroppedCanvasModal" role="dialog" aria-hidden="true" aria-labelledby="getCroppedCanvasTitle" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="getCroppedCanvasTitle"><{$smarty.const._PREVIEW}></h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="<{$smarty.const._CLOSE}>">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body"></div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-crop <{$btn_style}>" data-dismiss="modal"><{$smarty.const._CLOSE}></button>
                                        <a class="btn <{$btn_style}> hidden" id="download" href="javascript:void(0);" download="cropped.jpg">Download</a>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.modal -->
                    </div><!-- /.docs-buttons -->
                </div>
            </div>
			
            <!-- ***************Tab for upload image ***************-->
			<div class='tab-pane center' id='5'>
				<{$form_uploadimage}>
			</div>
		</div>
	</div>				

<div class='clear'>&nbsp;</div>
 
<!-- Create Modals -->
<{foreach item=m from=$nbModals|default:null}>
    <div class='modal fade' id='myModalImagePicker<{$m}>' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'>
        <div class='modal-dialog wgg-modal-dialog' role='document'>
            <div class='modal-content'>
                <div class='modal-header'>
                    <button type='button' class='close' data-dismiss='modal'
                            aria-label='Close'><span aria-hidden='true'>&times;</span>
                    </button>
                    <h4 class='modal-title' id='myModalLabel'><{$smarty.const._CO_WGGALLERY_IMAGES_TITLE}></h4>
                </div>
                <div class='modal-body'>
                    <{foreach item=image from=$images|default:null}>
                        <{if $image.alb_name}><h4 class='modal-title'><{$image.alb_name}></h4><{/if}>
                        <input class='imgGrid<{$m}>' type='image' src='<{$image.thumb}>' alt='<{$image.title}>'
                               style='padding:3px;max-height:150px;max-width:200px' value='<{$image.name}>' onclick='selectGridImage(this, <{$m}>)'>
                    <{/foreach}>
                </div>
            </div>
        </div>
    </div>
<{/foreach }>
<!-- end of modals -->

 <script type='application/javascript'>
	function changeGridSetting(element) {
		$('#btnGridAdd5').attr('disabled', 'disabled');
		$('#btnGridAdd6').attr('disabled', 'disabled');
		$('#btnCreateGrid4').addClass('hidden');
		$('#btnCreateGrid6').addClass('hidden');
		
		if (element.value == 1) {
			$('#btnCreateGrid4').removeClass('hidden');
		} else {
			$('#btnGridAdd5').removeAttr('disabled');
			$('#btnGridAdd6').removeAttr('disabled');
			$('#btnCreateGrid6').removeClass('hidden');
		}
	}
	
	$('#btnCropCreate').click(function () {
        $('#btnCropApply').removeClass('disabled');
	})
	
	$('#btnCreateGrid4').click(function () {
        document.getElementById('gridImg').src='<{$wggallery_url}>/assets/images/loading.gif';
		$.ajax({
            data: 'op=creategrid&type=4&alb_id=<{$album.id}>&src1=' + $('#imageGrid1').attr('src') + '&src2=' + $('#imageGrid2').attr('src') + '&src3=' + $('#imageGrid3').attr('src') + '&src4=' + $('#imageGrid4').attr('src') + '&target=album<{$album.id}>.jpg',
            url: 'album_images.php',
            method: 'POST',
            success: function() {
                document.getElementById('gridImg').src='<{$wggallery_upload_image_url}>/temp/album<{$album.id}>.jpg?' + new Date().getTime();
				$('#gridImg').addClass('wgg-album-img');
				$('#btnApplyGrid').removeClass('disabled');
            }
        });
	})
	$('#btnCreateGrid6').click(function () {
        document.getElementById('gridImg').src='<{$wggallery_url}>/assets/images/loading.gif';
		$.ajax({
            data: 'op=creategrid&type=6&alb_id=<{$album.id}>&src1=' + $('#imageGrid1').attr('src') + '&src2=' + $('#imageGrid2').attr('src') + '&src3=' + $('#imageGrid3').attr('src') + '&src4=' + $('#imageGrid4').attr('src') + '&src5=' + $('#imageGrid5').attr('src') + '&src6=' + $('#imageGrid6').attr('src') + '&target=album<{$album.id}>.jpg',
            url: 'album_images.php',
            method: 'POST',
            success: function() {
                document.getElementById('gridImg').src='<{$wggallery_upload_image_url}>/temp/album<{$album.id}>.jpg?' + new Date().getTime();
				$('#gridImg').addClass('wgg-album-img');
				$('#btnApplyGrid').removeClass('disabled');
            }
        });
	})
	
    function selectGridImage(element, id) {
		document.getElementById('imageGrid' + id).src=element.src;
		var elements = document.getElementsByClassName('wgg-modal-selected');
		while(elements.length > 0){
			elements[0].classList.remove('wgg-modal-selected');
		}
		$('#imageGrid' + id).addClass('wgg-album-img');
        element.classList.add('wgg-modal-selected');
		$('#myModalImagePicker' + id).modal('hide');
		return false;
	}
	
	$('.imgSelect1').click(function () {
		$('#alb_imgid').val($(this).attr('id'));
		document.getElementById('albImgSelected').src=$(this).attr('src');
		var elements = document.getElementsByClassName('wgg-modal-selected');
		while(elements.length > 0){
			elements[0].classList.remove('wgg-modal-selected');
		}
		$(this).addClass('wgg-modal-selected');
		$('#btnApplySelected').removeClass('disabled');
		return false;
	})
	
</script>

<{include file='db:wggallery_footer.tpl'}>
