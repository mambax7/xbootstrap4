<!-- Header -->
<{include file='db:wgteams_admin_header.tpl'}>
<{if $members_list}>
    <table class="table table-bordered  table-striped">
        <thead>
            <tr class="head">
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_ID}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_FIRSTNAME}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_LASTNAME}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_TITLE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_ADDRESS}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_PHONE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_EMAIL}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_MEMBER_IMAGE}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_SUBMITTER}></th>
                <th class="center"><{$smarty.const._AM_WGTEAMS_DATE_CREATE}></th>
                <th class="center width5"><{$smarty.const._AM_WGTEAMS_FORM_ACTION}></th>
            </tr>
        </thead>
        <{if $members_count}>
            <tbody>
            <{foreach item=member from=$members_list}>
                <tr class="<{cycle values='odd, even'}>">
                    <td class="center"><{$member.id}></td>
                    <td class="center"><{$member.firstname}></td>
                    <td class="center"><{$member.lastname}></td>
                    <td class="center"><{$member.title}></td>
                    <td class="center"><{$member.address}></td>
                    <td class="center"><{$member.phone}></td>
                    <td class="center"><{$member.email}></td>
                    <td class="center"><img src="<{$wgteams_upload_url}>/members/images/<{$member.image}>" alt="members" style='max-width:50px;'></td>
                    <td class="center"><{$member.submitter}></td>
                    <td class="center"><{$member.date_create}></td>
                    <td class="center  width5">
                    <a href="members.php?op=edit&amp;member_id=<{$member.id}>" title="<{$smarty.const._EDIT}>"><img src="<{xoModuleIcons16 edit.png}>" alt="<{$smarty.const._EDIT}>"></a>
					<a href="image_editor.php?op=edit_member&amp;member_id=<{$member.id}>" title="<{$smarty.const._AM_WGTEAMS_IMG_EDITOR}>"><img src="<{$pathModIcon16}>/image_editor.png" alt="<{$smarty.const._AM_WGTEAMS_IMG_EDITOR}>"></a>
                    <a href="members.php?op=delete&amp;member_id=<{$member.id}>" title="<{$smarty.const._DELETE}>"><img src="<{xoModuleIcons16 delete.png}>" alt="<{$smarty.const._DELETE}>"></a>
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
