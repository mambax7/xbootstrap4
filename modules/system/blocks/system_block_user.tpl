<div class="usermenu">
    <ul class="nav nav-pills nav-stacked">
        <{if $xoops_isadmin}>
            <li><a href="<{xoAppUrl admin.php}>" title="<{$block.lang_adminmenu}>"><span class="fa fa-wrench"></span><{$block.lang_adminmenu}></a></li>
            <li><a href="<{xoAppUrl user.php}>" title="<{$block.lang_youraccount}>"><span class="fa fa-user"></span><{$block.lang_youraccount}></a></li>
        <{else}>
            <li><a class="menuTop" href="<{xoAppUrl user.php}>" title="<{$block.lang_youraccount}>"><span class="fa fa-user"></span><{$block.lang_youraccount}></a></li>
        <{/if}>
        <li><a href="<{xoAppUrl edituser.php}>" title="<{$block.lang_editaccount}>"><span class="fa fa-pencil"></span><{$block.lang_editaccount}></a></li>
        <li><a href="<{xoAppUrl notifications.php}>" title="<{$block.lang_notifications}>"><span class="fa fa-info-sign"></span><{$block.lang_notifications}></a></li>
        <{if $block.new_messages > 0}>
            <li><a class="info" href="<{xoAppUrl viewpmsg.php}>" title="<{$block.lang_inbox}>"><span class="fa fa-envelope"></span><{$block.lang_inbox}><span class="badge pull-right"><strong><{$block.new_messages}></strong></span></a></li>
        <{else}>
            <li><a href="<{xoAppUrl viewpmsg.php}>" title="<{$block.lang_inbox}>"><span class="fa fa-envelope"></span><{$block.lang_inbox}></a></li>
        <{/if}>
        <li><a href="<{xoAppUrl user.php?op=logout}>" title="<{$block.lang_logout}>"><span class="fa fa-off"></span><{$block.lang_logout}></a></li>
    </ul>
</div>
