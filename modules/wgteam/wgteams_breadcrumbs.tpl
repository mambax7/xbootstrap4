<ul class="breadcrumb"><li class="nav-item"><a class="nav-link" href="<{xoAppUrl'index.php'}>" title="home"><i class="fa fa-home"></i></a></li>
<{foreach item=itm from=$xoBreadcrumbs name=bcloop}>
        <{if $itm.link}>
    <li class="nav-item"><a class="nav-link" href="<{$itm.link}>" title="<{$itm.title}>"><{$itm.title}></a></li>
<{else}>
    <li><{$itm.title}></li>
<{/if}>
<{/foreach}></ul>
