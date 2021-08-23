<{if $error}>
	<div class='errorMsg'><strong><{$error}></strong></div>
<{/if}>
<br>
<{if $xoops_isadmin}>
   <div class="text-center bold"><a href="<{$admin}>"><{$smarty.const._MA_WGGALLERY_ADMIN}></a></div><br>
<{/if}>
<div class="pad2 marg2">
    <{if $comment_mode|default:'' == "flat"}>
        <{include file="db:system_comments_flat.tpl"}>
    <{elseif $comment_mode|default:'' == "thread"}>
        <{include file="db:system_comments_thread.tpl"}>
    <{elseif $comment_mode|default:'' == "nest"}>
        <{include file="db:system_comments_nest.tpl"}>
    <{/if}>
</div>

<br>
<{include file='db:system_notification_select.tpl'}>
<div class='clear spacer'></div>
<{if $copyright}>
<div class="pull-left"><{$copyright}></div>
<{/if}>
