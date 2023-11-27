<{include file='db:wggallery_header.tpl'}>

<{if isset($albums)}>
	<div class='panel panel-<{$panel_type}>'>
		<div class='panel-heading wgg-cats-header'><{$index_alb_title}></div>
		<div class='panel-body'>
			<{foreach item=album from=$albums|default:null}>
                <{include file='db:wggallery_albumitem_bcards.tpl' album=$album}>
			<{/foreach}>
			<div class='clear'>&nbsp;</div>
			<{if isset($pagenav_albums)}>
				<div class='xo-pagenav floatright'><{$pagenav_albums}></div>
				<div class='clear spacer'></div>
			<{/if}>
		</div>
	</div>
<{/if}>
<{if isset($categories)}>
	<div class='panel panel-<{$panel_type}>'>
		<div class='panel-heading wgg-cats-header'><{$index_cats_title}></div>
		<div class='panel-body'>
			<{foreach item=category from=$categories|default:null}>
                <{if $number_cols_cat == 6}>
                    <div class='col-xs-12 col-sm-2'>
                <{elseif $number_cols_cat == 4}>
                    <div class='col-xs-12 col-sm-3'>
                <{elseif $number_cols_cat == 3}>
                    <div class='col-xs-12 col-sm-4'>
                <{elseif $number_cols_cat == 2}>
                    <div class='col-xs-12 col-sm-6'>
                <{else}>
                    <div class='col-xs-12 col-sm-12'>
                <{/if}>
                    <{include file='db:wggallery_categoryitem_bcards.tpl' category=$category}>
                </div>
                <{if $category.linebreak}>
                    <div class='clear'>&nbsp;</div>
                <{/if}>
			<{/foreach}>
			<div class='clear'>&nbsp;</div>
			<{if isset($pagenav_cats)}>
				<div class='xo-pagenav floatright'><{$pagenav_cats}></div>
				<div class='clear spacer'></div>
			<{/if}>
		</div>
	</div>
<{/if}>

<{if isset($alb_pid)}>
	<div class='clear'>&nbsp;</div>
	<div class='wgg-goback'>
		<a class='btn btn-secondary wgg-btn' href='index.php?op=list<{if isset($subm_id)}>&amp;subm_id=<{$subm_id}><{/if}>' title='<{$smarty.const._CO_WGGALLERY_BACK}>'>
			<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>/back.png' alt='<{$smarty.const._CO_WGGALLERY_BACK}>'>
			<{if isset($displayButtonText)}><{$smarty.const._CO_WGGALLERY_BACK}><{/if}>
		</a>
	</div>
<{/if}>	
<div class='clear'>&nbsp;</div>

<{include file='db:wggallery_footer.tpl'}>
