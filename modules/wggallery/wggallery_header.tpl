<{if isset($show_breadcrumbs)}>
    <{include file='db:wggallery_breadcrumbs.tpl'}>
<{/if}>

<{if $ads|default:'' != ''}>
	<div class='center'>
<{$ads}></div>
<{/if}>
