<div class="row">
<{if $team.team_image}>
    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
        <div class="team-img"><img class="img-fluid" src="<{$wgteams_teams_upload_url}><{$team.team_image}>" alt="<{$team.team_name}>" title="<{$team.team_name}>"></div>
    </div>
    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
<{else}>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<{/if}>
        <div class="team-heading"><h3 class="team-name"><{$team.team_name}></h3></div>
        <{if $team.team_descr}>
            <div class="team-descr"><p class="team-descr"><{$team.team_descr}></p></div>
        <{/if}>
        <{if $team.team_read_more}>
            <div class="team-readmore"><a href="<{$wgteams_url_index}>?team_id=<{$team.team_id}>" class="" alt="<{$team.team_read_more}>" title="<{$team.team_read_more}>"><{$team.team_read_more}></a></div>
        <{/if}>
    </div>
</div>
<{if $team.members}>
    <{include file='db:wgteams_members_list.tpl' members=$team.members}>
<{/if}>
