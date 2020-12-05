<!-- Help: https://www.jssor.com/development/slider-with-loading-screen.html -->

<{if $jssor_loadings == 'loading-003-oval'}>
		<style>
			.jssorl-003-oval img {
				animation-name: jssorl-003-oval;
				animation-duration: 1.2s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			@keyframes jssorl-003-oval {
				from {
					transform: rotate(0deg);
				}
				to {
					transform: rotate(360deg);
				}
			}
		</style>
        <div data-u="loading" class="jssorl-003-oval" style="position:absolute;top:0;left:0;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<{$wggallery_url}>/assets/gallerytypes/jssor/svg/loading/static-svg/oval.svg">
        </div>	
<{/if}>

<{if $jssor_loadings == 'loading-004-double-tail-spin'}>
		<style>
			.jssorl-004-double-tail-spin img {
				animation-name: jssorl-004-double-tail-spin;
				animation-duration: 1.2s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			@keyframes jssorl-004-double-tail-spin {
				from {
					transform: rotate(0deg);
				}
				to {
					transform: rotate(360deg);
				}
			}
		</style>
		<div data-u="loading" class="jssorl-004-double-tail-spin" style="position:absolute;top:0;left:0;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<{$wggallery_url}>/assets/gallerytypes/jssor/svg/loading/static-svg/double-tail-spin.svg">
        </div>		
<{/if}>

<{if $jssor_loadings == 'loading-005-circles'}>
		<style>
			.jssorl-005-circles img {
				animation-name: jssorl-005-circles;
				animation-duration: 2.4s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			@keyframes jssorl-005-circles {
				from {
					transform: rotate(0deg);
				}
				to {
					transform: rotate(360deg);
				}
			}
		</style>
		<div data-u="loading" class="jssorl-005-circles" style="position:absolute;top:0;left:0;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<{$wggallery_url}>/assets/gallerytypes/jssor/svg/loading/static-svg/circles.svg">
        </div>
<{/if}>

<{if $jssor_loadings == 'loading-006-tail-spin'}>
		<style>
			.jssorl-006-tail-spin img {
				animation-name: jssorl-006-tail-spin;
				animation-duration: 1.2s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			@keyframes jssorl-006-tail-spin {
				from {
					transform: rotate(0deg);
				}
				to {
					transform: rotate(360deg);
				}
			}
		</style>
		<div data-u="loading" class="jssorl-006-tail-spin" style="position:absolute;top:0;left:0;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<{$wggallery_url}>/assets/gallerytypes/jssor/svg/loading/static-svg/tail-spin.svg">
        </div>
<{/if}>

<{if $jssor_loadings == 'loading-008-ball-triangle'}>
		<style>
			.jssorl-008-ball-triangle img {
				animation-name: jssorl-008-ball-triangle;
				animation-duration: 2.4s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			@keyframes jssorl-008-ball-triangle {
				from {
					transform: rotate(0deg);
				}

				to {
					transform: rotate(360deg);
				}
			}
		</style>
		<div data-u="loading" class="jssorl-008-ball-triangle" style="position:absolute;top:0;left:0;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<{$wggallery_url}>/assets/gallerytypes/jssor/svg/loading/static-svg/ball-triangle.svg">
        </div>
<{/if}>

<{if $jssor_loadings == 'loading-009-spin'}>
		<style>
			.jssorl-009-spin img {
				animation-name: jssorl-009-spin;
				animation-duration: 1.6s;
				animation-iteration-count: infinite;
				animation-timing-function: linear;
			}
			@keyframes jssorl-009-spin {
				from {
					transform: rotate(0deg);
				}
				to {
					transform: rotate(360deg);
				}
			}
		</style>
		<div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0;left:0;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<{$wggallery_url}>/assets/gallerytypes/jssor/svg/loading/static-svg/spin.svg">
        </div>
<{/if}>

<!-- End Loading Screen -->