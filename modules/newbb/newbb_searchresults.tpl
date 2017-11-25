<div class="alert alert-success"> <{$search_info}> </div>
<br>
<{if $results}>

    <{section name=i loop=$results}>

        <{if $results[i].post_text }>

        <{/if}>

    <{/section}>


    <{if $search_next or $search_prev}>

    <{/if}>
    <table class="table" border="0" cellpadding="0" cellspacing="0" align="center" width="95%">
        <thead>
        <tr class="head" align="center">
            <th><{$smarty.const._MD_NEWBB_FORUMC}></th>
            <th><{$smarty.const._MD_NEWBB_SUBJECT}></th>
            <th><{$smarty.const._MD_NEWBB_AUTHOR}></th>
            <th nowrap="nowrap"><{$smarty.const._MD_NEWBB_POSTTIME}></th>
        </tr>
        </thead>
        <tbody>
        <!-- start search results --><!-- start each result -->
        <tr align="center">
            <td class="even"><a href="<{$results[i].forum_link}>"><{$results[i].forum_name}></a></td>
            <!-- irmtfan hardcode removed align="left" -->
            <td class="odd" id="align_left"><a href="<{$results[i].link}>"><{$results[i].title}></a></td>
            <td class="even"><{$results[i].poster}></td>
            <td class="odd"><{$results[i].post_time}></td>
        </tr>
        <!-- START irmtfan add show search -->
        <tr align="center">
            <td class="even"></td>
            <td class="odd"><{$results[i].post_text}></td>
            <td class="even"></td>
            <td class="odd"></td>
        </tr><!-- END irmtfan add show search -->
        <!-- end each result --><!-- end search results -->
        <tr>
            <!-- irmtfan hardcode removed align="left" -->
            <td colspan="2" class="align_left"><{$search_prev}> </td>
            <td colspan="2" class="align_right"> <{$search_next}></td>
        </tr>
        </tbody>
    </table>
    <br>
<{elseif $lang_nomatch}>
    <div class="resultMsg"> <{$lang_nomatch}> </div>
    <br>
<{/if}>
