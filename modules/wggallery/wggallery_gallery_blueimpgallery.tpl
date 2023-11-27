<!-- Header -->
<{include file='db:wggallery_admin_header.tpl'}>

<style>
.blueimp-gallery > .description {
  position: absolute;
  top: 30px;
  left: 15px;
  color: #fff;
  display: none;
}
.blueimp-gallery-controls > .description {
  display: block;
}
</style>

<{if $slideshowtype == 'lightbox'}>
    <{if $images_nb > 0}>
        <div id="links">
            <{foreach item=image from=$images|default:null}>
                <a href="<{if $source == 'large'}><{$image.large}><{else}><{$image.medium}><{/if}>" title="<{$image.title}>" data-description="<{$image.desc}>">
                    <img src="<{if $source_preview == 'medium'}><{$image.medium}><{else}><{$image.thumb}><{/if}>" alt="<{$image.title}>">
                </a>
            <{/foreach}>
        </div>
    <{/if}>
    <!-- The Gallery as lightbox dialog, should be a child element of the document body -->
    <div id="blueimp-gallery" class="blueimp-gallery  blueimp-gallery-controls">
        <div class="slides"></div>
        <{if $showTitle == 'true'}><h3 class="title"></h3><{/if}>
        <p class="description"></p>
        <a class="prev">‹</a>
        <a class="next">›</a>
        <a class="close">×</a>
        <a class="play-pause"></a>
        <{if $showThumbnails == 'true'}>
            <ol class="indicator">
                <{foreach name=image item=image from=$images}>
                    <li style="background-image: url('<{$image.thumb}>');" title="<{$image.title}>" data-index="<{$smarty.foreach.image.iteration}>"></li>
                <{/foreach}>
            </ol>
        <{/if}>
    </div>

    <script src="<{$wggallery_url}>/assets/gallerytypes/blueimpgallery/js/blueimp-gallery.js" type="text/javascript"></script>
    
    <script>
        document.getElementById('links').onclick = function (event) {
            event = event || window.event;
            var target = event.target || event.srcElement,
                link = target.src ? target.parentNode : target,
                options = {
                    index: link,
                    startSlideshow: <{$slideshowAuto}>,
                    slideshowInterval: <{$slideshowSpeed}>,
                    transitionSpeed: <{$transitionDuration}>,
                    event: event
                },
                links = this.getElementsByTagName('a');
            blueimp.Gallery(links, options);
        };
        blueimp.Gallery(
            document.getElementById('links'),
            {
                onslide: function (index, slide) {
                    var text = this.list[index].getAttribute('data-description'),
                        node = this.container.find('.description');
                    node.empty();
                    if (text) {
                        node[0].appendChild(document.createTextNode(text));
                    }
                }
            }
        );
    </script>
<{/if}> 

<{if $slideshowtype == 'inline'}>

    <!-- The Gallery as inline carousel, can be positioned anywhere on the page -->
    <div id="blueimp-gallery-carousel" class="blueimp-gallery blueimp-gallery-controls blueimp-gallery-carousel blueimp-gallery-display blueimp-gallery-playing">
        <div class="slides"></div>
        <{if $showTitle == 'true'}><h3 class="title"></h3><{/if}>
        <a class="prev">‹</a>
        <a class="next">›</a>
        <a class="play-pause"></a>
        <{if $showThumbnails == 'true'}>
            <ol class="indicator">
                <{foreach name=image item=image from=$images}>
                    <li style="background-image: url('<{$image.thumb}>');" title="<{$image.title}>" data-index="<{$smarty.foreach.image.iteration}>"></li>
                <{/foreach}>
            </ol>
        <{/if}>
    </div>
    
    <{if $images_nb > 0}>
        <div id="links" class='hidden'>
            <{foreach item=image from=$images|default:null}>
                <a href="<{if $source == 'large'}><{$image.large}><{else}><{$image.medium}><{/if}>" title="<{$image.title}>"></a>
            <{/foreach}>
        </div>
    <{/if}>


    <script src="<{$wggallery_url}>/assets/gallerytypes/blueimpgallery/js/blueimp-gallery.js" type="text/javascript"></script>
    
    <script>
        blueimp.Gallery(
        document.getElementById('links').getElementsByTagName('a'),
        {
            container: '#blueimp-gallery-carousel',
            controlsClass: 'blueimp-gallery-controls',
            carousel: true,
            hidePageScrollbars: false,
            disableScroll: false,
            startSlideshow: <{$slideshowAuto}>,
            slideshowInterval: <{$slideshowSpeed}>,
            transitionSpeed: <{$transitionDuration}>
        }
    );
    </script>
<{/if}> 
	
<div class="clear spacer"></div>

<{if isset($error)}>
	<div class="errorMsg"><strong><{$error}></strong></div>
<{/if}> 

<!-- Footer -->
<{include file='db:wggallery_admin_footer.tpl'}>
