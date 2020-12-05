<!-- Header -->
<{include file='db:wgteams_admin_header.tpl'}>
<{if $teams_list}>
    <table class="table table-bordered table-striped" id="sortable">
        <thead>
            <tr class="head">
                <th class="center">&nbsp;</th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_ID}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_NAME}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_DESCR}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_IMAGE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_NB_COLS}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_TABLESTYLE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_IMAGESTYLE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_DISPLAYSTYLE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_TEAM_ONLINE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_SUBMITTER}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_DATE_CREATE}></th>
                <th class="center width5"><{$smarty.const._AM_WGTEAMS_FORM_ACTION}></th>
            </tr>
        </thead>
<{if $teams_count}>
    <tbody id="teams-list">
    <{foreach item=team from=$teams_list}>
        <tr class="even" id="torder_<{$team.id}>" >
            <td class="center"><img src="<{$wgteams_icons_url}>/16/up_down.png" alt="drag&drop" class="icon-sortable"></td>
            <td class="center"><{$team.id}></td>
            <td class="center"><{$team.name}></td>
            <td class="center"><{$team.descr}></td>
            <td class="center">
                <{if $team.image}>
                    <img src="<{$wgteams_upload_url}>/teams/images/<{$team.image}>" alt="teams" style='max-width:50px;'>
                <{else}>
                    &nbsp;
                <{/if}>
            </td>
            <td class="center"><{$team.nb_cols}></td>
            <td class="center"><{$team.tablestyle}></td>
            <td class="center"><{$team.imagestyle}></td>
            <td class="center"><{$team.displaystyle}></td>
            <td class="center">
                <a href="teams.php?op=set_onoff&amp;team_id=<{$team.id}>" title="<{$team.online}>">
                    <{if $team.online == $smarty.const._YES}>
                        <img src="<{xoModuleIcons16 on.png}>" alt="teams">
                    <{else}>
                        <img src="<{xoModuleIcons16 off.png}>" alt="teams">
                    <{/if}>
                </a>
            </td>
            <td class="center"><{$team.submitter}></td>
            <td class="center"><{$team.date_create}></td>
            <td class="center  width5">
            <a href="teams.php?op=edit&amp;team_id=<{$team.id}>" title="<{$smarty.const._EDIT}>"><img src="<{xoModuleIcons16 edit.png}>" alt="teams"></a>
            <a href="image_editor.php?op=edit_team&amp;team_id=<{$team.id}>" title="<{$smarty.const._AM_WGTEAMS_IMG_EDITOR}>"><img src="<{$pathModIcon16}>/image_editor.png" alt="<{$smarty.const._AM_WGTEAMS_IMG_EDITOR}>"></a>
            <a href="teams.php?op=delete&amp;team_id=<{$team.id}>" title="<{$smarty.const._DELETE}>"><img src="<{xoModuleIcons16 delete.png}>" alt="teams"></a>
            </td>
        </tr>

<{/foreach}>
</tbody>

<{/if}>
</table>
<div class="clear">&nbsp;</div>
<{if $pagenav}>
    <div class="xo-pagenav floatright"><{$pagenav}></div><div class="clear spacer"></div>

<{/if}>

<{/if}>
<{if $form}>
    <{$form}>
<{/if}>
<{if $error}>
    <div class="errorMsg"><strong><{$error}></strong>
</div>

<{/if}>
<br>
<!-- Footer -->
<{include file='db:wgteams_admin_footer.tpl'}>
