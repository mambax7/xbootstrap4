<{if $block > 0}>
    <div id="team" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 container-team">
        <{foreach item=team from=$block}>
            <div class="row"><{include file='db:wgteams_teams_list.tpl' team=$team}></div>
        <{/foreach}>
    </div>
<{/if}>
