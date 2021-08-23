<{if $publisher_display_breadcrumb}>
    <!-- Do not display breadcrumb if you are on indexpage or you do not want to display the module name -->
    <{if $module_home || $categoryPath}>
        <ol class="breadcrumb">
            <{if $module_home}>
                <li class="breadcrumb-item<{if !$categoryPath|default:false}> active<{/if}>"><{$module_home}></li>
            <{/if}>
            <{if $categoryPath|default:false}>
                <{if !$categoryPath|strstr:'<li>'}>
                    <{assign var=categoryPath value="<li>$categoryPath</li>"}>
                <{/if}>
                <{$categoryPath|replace:'<li>':'<li class="breadcrumb-item">'}>
            <{/if}>
        </ol>
    <{/if}>
<{/if}>

<{if $title_and_welcome|default:0 && $lang_mainintro|default:'' != ''}>
    <div class="card">
        <{$lang_mainintro}>
    </div>
<{/if}>
