<div class="member_list row">
    <{foreach item=member from=$members|default:null name=fe_members}>

        <{if $member.rel_nb_cols == 2}>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
        <{elseif $member.rel_nb_cols == 3}>
            <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
        <{elseif $member.rel_nb_cols == 4}>
            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
        <{else}>
            <div>
        <{/if}>

        <{if $member.rel_displaystyle == 'left'}>
            <{include file='db:wgteams_member_left.tpl' member=$member}>
        <{elseif $member.rel_displaystyle == 'right'}>
            <{include file='db:wgteams_member_right.tpl' member=$member}>
        <{else}>
            <{include file='db:wgteams_member_default.tpl' member=$member}>
        <{/if}>
            </div>

        <{if $smarty.foreach.fe_members.iteration % $member.rel_nb_cols == 0 && $smarty.foreach.fe_members.iteration < $smarty.foreach.fe_members.total}>
            </div>
            <div class="member_list row">
        <{/if}>

    <{/foreach}>
</div>
