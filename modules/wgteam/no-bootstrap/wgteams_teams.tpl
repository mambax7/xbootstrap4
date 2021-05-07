<{include file='db:wgteams_header.tpl'}>
<{if $teams_list > 0}>
    <div id="team" class="container-team">
        <{foreach item=teams from=$teams_list}>
            <{foreach item=team from=$teams}>
                <div class="row"><{include file='db:wgteams_teams_list.tpl' team=$team}></div>
            <{/foreach}>
        <{/foreach}>
    </div>
<{/if}>
<{include file='db:wgteams_footer.tpl'}>
