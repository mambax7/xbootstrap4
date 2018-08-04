<{* enable adhesive menus by setting value to 'yes', disable using 'no' *}>
<{assign var='stickyHeader' value='yes'}>
<{if $stickyHeader === 'yes'}>
<header class="adhesiveHeader"><{/if}>
    <div class="navbar-wrapper">
        <div class="navbar navbar-dark bg-dark navbar-static-top global-nav navbar-expand-sm">
            <div class="container">

                <div class="navbar-header">
                    <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggler" type="button">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="<{$xoops_url}>" class="navbar-brand xlogo" title="<{$xoops_sitename}>">
                        <img src="<{$xoops_imageurl}>images/logo.png" alt="<{$xoops_sitename}>">
                    </a>
                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="nav-item active"><a href="<{$xoops_url}>" class="nav-link"><{$smarty.const.THEME_HOME}></a></li>
                        <li class="nav-item"><a href="javascript:;" class="nav-link"><{$smarty.const.THEME_MODULE1}></a></li>

                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle" href="javascript:;"><{$smarty.const.THEME_MODULE2}><b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Topic 1</a></li>
                                <li><a class="dropdown-item" href="#">Topic 2</a></li>
                                <li><a class="dropdown-item" href="#">Topic 3</a></li>
                                <li class="dropdown-submenu dropdown-item"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Topic 4</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="#">Sub-Topic A</a></li>
                                        <li><a class="dropdown-item" href="#">Sub-Topic B</a></li>
                                        <li><a class="dropdown-item" href="#">Sub-Topic C</a></li>
                                        <li><a class="dropdown-item" href="#">Sub-Topic D</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item dropdown-item"><a href="#">Topic 5</a></li>
                            </ul>
                        </li>

                        <li class="nav-item"><a href="<{$xoops_url}>/modules/newbb" class="nav-link"><{$smarty.const.THEME_MODULE3}></a></li>
                        <li class="nav-item"><a href="<{$xoops_url}>/modules/contact" class="nav-link"><{$smarty.const.THEME_MODULE4}></a></li>
                    </ul>


                    <{if $xoops_search|default:false}>
                        <form class="form-inline ml-auto" role="search" action="<{xoAppUrl search.php}>" method="get">
                            <div class="form-group">
                                <input type="text" name="query" class="form-control" placeholder="<{$smarty.const.THEME_SEARCH_TEXT}>">
                                <input type="hidden" name="action" value="results">
                            </div>
                            <button class="btn btn-primary" type="submit"><{$smarty.const.THEME_SEARCH_BUTTON}></button>
                        </form>

                    <{/if}>
                </div>
            </div>
        </div>
    </div><!-- .navbar-wrapper -->
    <{if $stickyHeader === 'yes'}></header><{/if}>
