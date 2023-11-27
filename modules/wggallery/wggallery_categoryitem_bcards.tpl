
<div class="card">
        <{if $category.image}>
            <a class='' href='index.php?op=list&amp;alb_pid=<{$category.id}>' title='<{$smarty.const._CO_WGGALLERY_CATS_ALBUMS}>'>
                <img class="card-img-top img-fluid" src="<{$category.image}>" alt="<{$category.name}>" title="<{$category.name}>">
            </a>
        <{/if}>
		<div class="card-body">
            <{if isset($showTitle)}><h5 class="center"><{$category.name}></h5><{/if}>
            <{if isset($showDesc)}><p class="center"><{$category.desc}></p><{/if}>
            <p class="center"><a class='btn btn-primary' href='index.php?op=list&amp;alb_pid=<{$category.id}>' title='<{$smarty.const._CO_WGGALLERY_IMAGES_ALBUMSHOW}>'><{$smarty.const._CO_WGGALLERY_IMAGES_ALBUMSHOW}></a></p>
        </div>
	</div>
</div>
<{if $category.linebreak}>
	<div class='clear'>&nbsp;</div>
<{/if}>
