<{if $album.newrow}><div class="grid"><{/if}>
<figure class="effect-<{$hovereffect}> figure<{$number_cols_album}><{$inblock}>">
    <img class='' src='<{$album.image}>' alt='<{$album.name}>'>
    <figcaption>
        <div class="text_figure<{$number_cols_album}><{$inblock}>">
            <h3><{$album.name}></h3>
            <{if $album.desc}><p><{$album.desc}></p><{/if}>
        </div>
        <{if $album.nb_images}>
            <{if $gallery}>
                <a class='' href='<{$wggallery_url}>/gallery.php?op=show&amp;alb_id=<{$album.id}><{if $subm_id}>&amp;subm_id=<{$subm_id}><{/if}>' title='<{$smarty.const._CO_WGGALLERY_IMAGES_ALBUMSHOW}>' target='<{$gallery_target}>'></a>
            <{else}>
                <a class='' href='<{$wggallery_url}>/images.php?op=list&amp;alb_id=<{$album.id}>&amp;alb_pid=<{$album.pid}>' title='<{$smarty.const._CO_WGGALLERY_IMAGES_INDEX}>'></a>
            <{/if}>
        <{/if}>
    </figcaption>			
</figure>
<{if $album.linebreak}></div><div class='clear'>&nbsp;</div><{/if}>