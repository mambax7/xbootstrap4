<table class="">
    <{if $team.team_image}>
        <tr class="">
            <td class="team-img" rowspan="2"><img class="" src="<{$wgteams_teams_upload_url}><{$team.team_image}>" alt="<{$team.team_name}>" title="<{$team.team_name}>"></td>
        </tr>
    <{/if}>
    <tr class="">
        <td class="team-heading center"><h3 class="team-title center"><{$team.team_name}></h3></td>
    </tr>
    <{if $team.team_descr}>
        <tr class="">
            <td class="team-descr"><p><{$team.team_descr}></p></td>
        </tr>
    <{/if}>
    <{if $team.team_read_more}>
        <tr class="team-readmore">
            <td class="team-descr"><a href="<{$wgteams_url_index}>?team_id=<{$team.team_id}>" class="" alt="<{$team.team_read_more}>" title="<{$team.team_read_more}>"><{$team.team_read_more}></a></td>
        </tr>
    <{/if}>
</table>
<{if $team.members}>
    <{include file='db:wgteams_members_list.tpl' members=$team.members}>
<{/if}>
