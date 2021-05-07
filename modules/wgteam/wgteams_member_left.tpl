<div class="row member-table">
    <{if $member.member_image}>
        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4">
            <img class="img-fluid center member-img <{$member.rel_imagestyle}>" src="<{$member.member_image_url}><{$member.member_image}>" alt="<{$member.member_name}>" title="<{$member.member_name}>">
        </div>
        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
    <{else}>
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <{/if}>
        <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
            <{if $member.member_labels}>
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_NAME}></div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-text member-name">
            <{else}>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-name">
            <{/if}>
            <{$member.member_name}></div>
        </div>
        <{if $member.member_address}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_ADDRESS}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-text member-address">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-address">
                <{/if}>
                <{$member.member_address}></div>
            </div>
        <{/if}>
        <{if $member.member_phone}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_PHONE}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-label member-phone">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-phone">
                <{/if}>
                <{$member.member_phone}></div>
            </div>
        <{/if}>
        <{if $member.member_email}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$smarty.const._MA_WGTEAMS_MEMBER_EMAIL}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-label member-email">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-email">
                <{/if}>
                <{$member.member_email}></div>
            </div>
        <{/if}>
        <{if $member.info_1 || $member.info_1_name}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$member.info_1_name}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-label member-info">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-info">
                <{/if}>
                <{$member.info_1}></div>
            </div>
        <{/if}>
        <{if $member.info_2 || $member.info_2_name}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$member.info_2_name}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-label member-info">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-info">
                <{/if}>
                <{$member.info_2}></div>
            </div>
        <{/if}>
        <{if $member.info_3 || $member.info_3_name}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$member.info_3_name}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-label member-info">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-info">
                <{/if}>
                <{$member.info_3}></div>
            </div>
        <{/if}>
        <{if $member.info_4 || $member.info_4_name}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$member.info_4_name}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-label member-info">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-info">
                <{/if}>
                <{$member.info_4}></div>
            </div>
        <{/if}>
        <{if $member.info_5 || $member.info_5_name}>
            <div class='<{if $member.rel_tablestyle == 'wgteams-striped'}><{cycle values="wgteams-odd, wgteams-even"}><{else}><{$member.rel_tablestyle}><{/if}>'>
                <{if $member.member_labels}>
                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 member-label"><{$member.info_5_name}></div>
                    <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 member-label member-info">
                <{else}>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 member-text member-info">
                <{/if}>
                <{$member.info_5}></div>
            </div>
        <{/if}>
    </div>
</div>
