<!-- Header -->
<{include file='db:wggallery_admin_header.tpl'}>
<{if $gallerytypes_list}>
	<table class='table table-bordered'>
		<thead>
			<tr class="head">
				<th class="center"><{$smarty.const._AM_WGGALLERY_GT_AT_ID}></th>
				<th class="center"><{$smarty.const._AM_WGGALLERY_GT_AT_NAME}></th>
				<th class="center"><{$smarty.const._AM_WGGALLERY_GT_AT_CREDITS}></th>
				<th class="center"><{$smarty.const._AM_WGGALLERY_GT_AT_TEMPLATE}></th>
				<th class="center"><{$smarty.const._AM_WGGALLERY_GT_AT_OPTIONS}></th>
				<th class="center"><{$smarty.const._AM_WGGALLERY_GT_AT_DATE}></th>
				<th class="center"><{$smarty.const._AM_WGGALLERY_GT_AT_PRIMARY_SET}></th>
				<th class="center width5"><{$smarty.const._CO_WGGALLERY_FORM_ACTION}></th>
			</tr>
		</thead>
		<{if $gallerytypes_count}>
			<tbody>
				<{foreach item=gallerytype from=$gallerytypes_list}>
					<tr class="<{cycle values='odd, even'}>">
						<td class='center'><{$gallerytype.id}></td>
						<td class="center"><{$gallerytype.name}></td>
						<td class="center"><{$gallerytype.credits}></td>
						<td class="center"><{$gallerytype.template}></td>
						<td class="left width30"><{$gallerytype.options_text}></td>
						<td class="center"><{$gallerytype.date}></td>
						<td class="center">
							<{if 0 == $gallerytype.primary}>
								<a href="gallerytypes.php?op=set_primary&amp;gt_id=<{$gallerytype.id}>" title="<{$smarty.const._AM_WGGALLERY_GT_AT_PRIMARY_SET}>">
									<img src="<{$wggallery_icon_url_16}>/0.png" alt="_AM_WGGALLERY_GT_AT_PRIMARY_SET">
								</a>
							<{else}>
                                <img src="<{$wggallery_icon_url_16}>/on.png" alt="_AM_WGGALLERY_GT_AT_PRIMARY">
                            <{/if}>
						</td>
						<td class="center  width10">
							<{if 1 < $gallerytype.id}>
								<a href="gallerytypes.php?op=options&amp;gt_id=<{$gallerytype.id}>" title="<{$smarty.const._OPTIONS}>">
									<img src="<{$wggallery_icon_url_16}>/options.png" alt="<{$smarty.const._OPTIONS}>">
								</a>
							<{/if}>
                            <a href="gallerytypes.php?op=reset&amp;gt_id=<{$gallerytype.id}>&amp;template=<{$gallerytype.template}>" title="<{$smarty.const._RESET}>">
								<img src="<{$wggallery_icon_url_16}>/reset.png" alt="<{$smarty.const._RESET}>">
							</a>
							<a href="gallerytypes.php?op=delete&amp;gt_id=<{$gallerytype.id}>" title="<{$smarty.const._DELETE}>">
								<img src="<{xoModuleIcons16 delete.png}>" alt="<{$smarty.const._DELETE}>">
							</a>
						</td>
					</tr>
				<{/foreach}>
			</tbody>
		<{/if}>
	</table>
	<div class="clear">&nbsp;</div>
	<{if $pagenav}>
		<div class="xo-pagenav floatright"><{$pagenav}></div>
		<div class="clear spacer"></div>
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
<!-- Footer --><{include file='db:wggallery_admin_footer.tpl'}>
