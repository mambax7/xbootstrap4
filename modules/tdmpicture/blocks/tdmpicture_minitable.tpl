<{if $block.block_style == 0}>


<{foreach item=blocks from=$block.blocks}>
">

<{/foreach}>

<table class="outer"><tbody><tr class="<{cycle values=" even,odd"}=""><td><a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$blocks.id}>"><{$blocks.title}></a>
    (<{$smarty.const._MD_TDMPICTURE_COMMENT}>: <{$blocks.comments}>
    - <{$smarty.const._MD_TDMPICTURE_VOTE}>: <{$blocks.counts}>/<{$blocks.votes}>)
    </td>
    </tr></tbody></table>
    <{/if}>

    <{if $block.block_style == 1}>
    <table class="outer even">
    <tbody><tr>
    <td>
    <ul class="display thumb_view">
    <{foreach item=blocks from=$block.blocks}>
    <li>
    <div class="switch_img">
    <div style="width:<{$smarty.const.TDMPICTURE_THUMB_WIDTH}>px;height:<{$smarty.const.TDMPICTURE_THUMB_HEIGTH}>px;">
    <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$blocks.id}>"><img src="<{$blocks.img}>" title="<{$blocks.title}>" alt="<{$blocks.title}>"></a>
    </div>
    </div>
    </li>
    <{/foreach}>
    </ul>
    </td>
    </tr>
    </tbody></table>
    <{/if}>

    <{if $block.block_style == 2}>
    <table class="outer even">
    <tbody><tr>
    <td>
    <ul class="display">
    <{foreach item=blocks from=$block.blocks}>
    <li>
    <div class="switch_img">
    <div style="width:<{$smarty.const.TDMPICTURE_THUMB_WIDTH}>px;height:<{$smarty.const.TDMPICTURE_THUMB_HEIGTH}>px;">
    <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$blocks.id}>"><img src="<{$blocks.img}>" title="<{$blocks.title}>" alt="<{$blocks.title}>"></a>
    </div>
    </div>

    <div style="float:left;">
    <div class="switch_title">
    <h2>
    <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$blocks.id}>"><{$blocks.title}></a>
    </h2>

    <div class="switch_in"><{$smarty.const._MD_TDMPICTURE_BY}>: <a href="<{$smarty.const.TDMPICTURE_URL}>/user.php?ut=<{$blocks.uid}>"><{$blocks.postername}></a>
    ,
    <{$smarty.const._MD_TDMPICTURE_IN}>: <a href="<{$smarty.const.TDMPICTURE_URL}>/viewcat.php?ct=<{$blocks.file_cat_id}>"><{$blocks.cat}></a>
    ,
    <{$smarty.const._MD_TDMPICTURE_LE}>: <{$blocks.indate}>
    </div>

    </div>
    </div>


    <div id="tdmpicture_num" class="switch_info odd">
    <span><{$blocks.comments}></span>
    <hr>
    <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$file.id}>"><{$smarty.const._MD_TDMPICTURE_COMMENT}></a>
    </div>

    <div id="tdmpicture_num" class="switch_info odd">
    <{if $perm_vote}>
    <a id="tdmpicture_voteup" href="javascript:;" onclick="AddVote(<{$blocks.id}>);return false;" title="<{$smarty.const._MD_TDMPICTURE_VOTEADD}>"></a>
    <{/if}>
    <span><{$blocks.counts}></span>/<span><{$blocks.votes}></span>
    <hr>
    <{if $perm_vote}>
    <a id="tdmpicture_votedown" href="javascript:;" onclick="RemoveVote(<{$file.id}>);return false;" title="<{$smarty.const._MD_TDMPICTURE_VOTEREMOVE}>"></a>
    <{/if}>
    <{$smarty.const._MD_TDMPICTURE_VOTE}>
    </div>


    </li>
    <{/foreach}>
    </ul>
    </td>
    </tr>
    </tbody></table>
    <{/if}>



    <{if $block.block_style == 3}>
    <script type="text/javascript">
    var $tdmpicture = jQuery.noConflict();
    $tdmpicture(document).ready(function ($) {

    // time between image rotate
    var delay = 20000;

    // c'est visible
            var $imgArr = $('#slide_<{$block.block_name}> > li');

            // show a random image
            for (var e = 0; e < <{$block.block_slide}>; e++) {
                $imgArr.eq(e).show();
            }

            setInterval(function () {
                masqueimg();
            }, delay);

            // run the changeImage function after every (delay) miliseconds

            function masqueimg() {
                //visible
                var $imgArr = $('#slide_<{$block.block_name}> > li:visible');
                5
                var $inArr = $('#slide_<{$block.block_name}> > li:hidden');
                0

                if ($inArr.length == 0) {
                    return false;
                } else {
                    $imgArr.eq(Math.floor(Math.random() * $imgArr.length)).fadeOut("fast");
    $inArr.eq(Math.floor(Math.random() * $inArr.length)).fadeIn("slow");
    }
    }

    });
    </script>
    <table class="tdmp_table">
        <tbody><tr>
        <td>

        <ul id="slide_<{$block.block_name}>" class="display thumb_view">
        <{foreach item=blocks from=$block.blocks}>
        <li style="display: none;  list-style-type: none; float:left;">
        <div class="switch_img">
        <div style="width:<{$smarty.const.TDMPICTURE_THUMB_WIDTH}>px;height:<{$smarty.const.TDMPICTURE_THUMB_HEIGTH}>px;">
        <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$blocks.id}>"><img src="<{$blocks.img}>" alt="<{$blocks.title}>" title="<{$blocks.title}>"></a>
        </div></div></li>


    <{/foreach}>
    </ul>
    </td>
    </tr>
    </tbody></table>
    <{/if}>

    <{if $block.block_style == 4}>
    <table class="tdmp_table">
        <tbody><tr>
        <td>
        <ul class="display thumb_view">
        <{foreach item=blocks from=$block.blocks}>
        <li style="list-style-type: none; float:left;">
        <div class="switch_img">
        <div style="width:<{$block.block_minwidth}>px;height:<{$block.block_minheigth}>px;">
        <a href="<{$smarty.const.TDMPICTURE_URL}>/viewfile.php?st=<{$blocks.id}>"><img style="width:<{$block.block_minwidth}>px;heigth:<{$block.block_minheigth}>px;margin:0;padding:0;border: none;" src="<{$blocks.img}>" alt="<{$blocks.title}>" title="<{$blocks.title}>"></a>
        </div></div></li>


    <{/foreach}>
    </ul>
    </td>
    </tr>
    </tbody></table>
    <div style="float:right;">
        <{$block.block_url}> | <a href="<{$smarty.const.TDMPICTURE_URL}>/index.php"><{$smarty.const._AM_TDMPICTURE_ALL}></a>
    </div>
    <{/if}>


    <br class="clear">
