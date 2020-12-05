<{include file="db:wggallery_header.tpl"}>
<table class="wggallery">
    <thead class="outer">
        <tr class="head">
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_ID}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_TITLE}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_DESC}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_NAME}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_ORIGNAME}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_MIMETYPE}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_SIZE}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_RESX}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_RESY}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_DOWNLOADS}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_RATINGLIKES}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_VOTES}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_WEIGHT}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_ALBID}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_STATE}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_DATE}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_SUBMITTER}></th>
            <th class="center"><{$smarty.const._MA_WGGALLERY_IMG_IP}></th>
        </tr>
    </thead>
    <tbody>
        <{foreach item=list from=$images}>
            <tr class="<{cycle values='odd, even'}>">
                <td class="center"><{$list.id}></td>
                <td class="center"><{$list.title}></td>
                <td class="center"><{$list.desc}></td>
                <td class="center"><{$list.name}></td>
                <td class="center"><{$list.nameorig}></td>
                <td class="center"><{$list.mimetype}></td>
                <td class="center"><{$list.size}></td>
                <td class="center"><{$list.resx}></td>
                <td class="center"><{$list.resy}></td>
                <td class="center"><{$list.downloads}></td>
                <td class="center"><{$list.ratinglikes}></td>
                <td class="center"><{$list.votes}></td>
                <td class="center"><{$list.weight}></td>
                <td class="center"><{$list.albid}></td>
                <td class="center"><{$list.state}></td>
                <td class="center"><{$list.date}></td>
                <td class="center"><{$list.submitter}></td>
                <td class="center"><{$list.ip}></td>
            </tr>
        <{/foreach}>
    </tbody>
</table>
<{include file="db:wggallery_footer.tpl"}>
