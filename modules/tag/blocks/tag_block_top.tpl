<div class="tag-list">
    <ul class="list-unstyled">
        <{foreach item=tag from=$block.tags|default:null}>
            <li><a href="<{$xoops_url}>/modules/<{$block.tag_dirname}>/view.tag.php<{$smarty.const.URL_DELIMITER}><{$tag.term}>/" title="<{$tag.term}>" rel="tag"><{$tag.term}></a> <span class="badge badge-light text-muted"><{$tag.count}></span></li>
        <{/foreach}>
    </ul>
</div>

