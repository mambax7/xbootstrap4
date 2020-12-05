<!-- Header -->
<{include file='db:wggallery_admin_header.tpl'}>
<style>
 .btn {
	margin:0;
	padding: 4px 10px;
	border:1px solid #ccc;
	border-radius:5px;
 }
 .disabled {
	pointer-events: none;
	cursor: default; 
 }
</style>

<{if $error_exist }>
	<div style='font-size:120%;margin-bottom:20px'><p style='color:#ff0000'><{$error_exist}>:</p>
        <{if $error_albexist}><p style='color:#ff0000'><{$error_albexist}></p><{/if}>
        <{if $error_imgexist}><p style='color:#ff0000'><{$error_imgexist}></p><{/if}>
    </div>
<{/if}>
<{if $search_result}>
	<div style='font-size:120%;margin-bottom:20px'><{$smarty.const._AM_WGGALLERY_IMPORT_READ}>: <{$im_name}></div>
<{/if}>

<{if $import_modules}>
    <table class='table table-bordered'>
        <thead>
            <tr class='head'>
                <th class='center' style='width:40%'><{$smarty.const._AM_WGGALLERY_IMPORT_SUPPORT}></th>
                <th class='center' style='width:40%'><{$smarty.const._AM_WGGALLERY_IMPORT_FOUND}></th>
                <th class='center' style='width:20%'><{$smarty.const._CO_WGGALLERY_FORM_ACTION}></th>
            </tr>
        </thead>
        <tbody>
            <{foreach item=module from=$import_modules}>
                <tr class="<{cycle values='odd, even'}>">
                    <td class='left'><{$module.name}></td>
                    <td class='left'>
                        <{if $module.found == 1}>
                            <img src="<{$wggallery_icon_url_16}>/on.png" alt="<{$smarty.const._YES}>">  <{$smarty.const._AM_WGGALLERY_IMPORT_SUP_INSTALLED}>
                        <{else}>
                            <img src="<{$wggallery_icon_url_16}>/off.png" alt="<{$smarty.const._NO}>">  <{$smarty.const._AM_WGGALLERY_IMPORT_SUP_NOTINSTALLED}>
                        <{/if}>
                    </td>
                    <td class='center'>
                        <p><a class='btn <{if $module.found == 0 }>disabled<{/if}>' href='import.php?op=read_<{$module.name}>' title='<{$smarty.const._AM_WGGALLERY_IMPORT_READ}>'><{$smarty.const._AM_WGGALLERY_IMPORT_READ}></a></p>
                    </td>
                </tr>
            <{/foreach}>
        </tbody>
    </table>
<{/if}>

<{if $form}>
	<{$form}>
<{/if}>
<{if $error}>
	<div class='errorMsg'><strong><{$error}></strong></div>
<{/if}>
<br>
<!-- Footer --><{include file='db:wggallery_admin_footer.tpl'}>
