<{if $bookmarks|default:0 != 0}>
<{include file="db:system_bookmarks.tpl"}>
<{/if}>

<{if $fbcomments|default:0 != 0}>
<{include file="db:system_fbcomments.tpl"}>
<{/if}>
<div class="pull-right"><{$copyright}></div>
<{if $pagenav|default:'' != ''}>
    <div class="pull-right"><{$pagenav}></div>
<{/if}>
<br>
<{if isset($xoops_isadmin)}>
   <div class="text-center bold"><a href="<{$admin}>"><{$smarty.const._MA_WGTEAMS_ADMIN}></a></div><br>
<{/if}>
