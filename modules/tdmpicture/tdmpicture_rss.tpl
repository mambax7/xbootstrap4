<{*<?xml version="1.0" encoding="UTF-8"?>*}>
<rss version="2.0">
    <channel>
        <title><{$channel_title}></title>
        <link><{$channel_link}>
        <description><{$channel_desc}></description>
        <lastbuilddate><{$channel_lastbuild}></lastbuilddate>
        <docs>http://backend.userland.com/rss/</docs>
        <generator><{$channel_generator}></generator>
        <category><{$channel_category}></category>
        <managingeditor><{$channel_editor}></managingeditor>
        <webmaster><{$channel_webmaster}></webmaster>
        <language><{$channel_language}></language>
        <{if $image_url|default:'' != ''}>
            <img>
            <title><{$channel_title}></title>
            <url><{$image_url}></url>
            <link>
            <{$channel_link}>
            <width><{$image_width}></width>
            <height><{$image_height}></height>
        <{/if}>
        <{foreach item=tpitem from=$tpitem}>
            <item>
                <title><{$tpitem.title}></title>
                <link><{$tpitem.link}>
                <description><{$tpitem.text}></description>
                <pubdate><{$tpitem.indate}></pubdate>
                <guid><{$tpitem.guid}></guid>
            </item>
        <{/foreach}>
    </channel>
</rss>
