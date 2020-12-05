<!-- Header -->
<{include file='db:wgteams_admin_header.tpl'}>
<{if $infofields_list}>
    <table class="table table-bordered  table-striped"><thead><tr class="head"><th class="center"><{$smarty.const._AM_WGTEAMS_INFOFIELD_ID}></th>
<th class="center"><{$smarty.const._AM_WGTEAMS_INFOFIELD_NAME}></th>
<th class="center"><{$smarty.const._AM_WGTEAMS_SUBMITTER}></th>
<th class="center"><{$smarty.const._AM_WGTEAMS_DATE_CREATE}></th>
<th class="center width5"><{$smarty.const._AM_WGTEAMS_FORM_ACTION}></th>
</tr>
</thead>
<{if $infofields_count}>
    <tbody><{foreach item=infofield from=$infofields_list}>
        <tr class="<{cycle values='odd, even'}>"><td class="center"><{$infofield.field_id}></td>
<td class="center"><{$infofield.field_name}></td>
<td class="center"><{$infofield.field_submitter}></td>
<td class="center"><{$infofield.field_date_created}></td>
<td class="center  width5">
<a href="infofields.php?op=edit&amp;infofield_id=<{$infofield.field_id}>" title="<{$smarty.const._EDIT}>"><img src="<{xoModuleIcons16 edit.png}>" alt="infofields"></a>
<a href="infofields.php?op=delete&amp;infofield_id=<{$infofield.field_id}>" title="<{$smarty.const._DELETE}>"><img src="<{xoModuleIcons16 delete.png}>" alt="infofields"></a>
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
