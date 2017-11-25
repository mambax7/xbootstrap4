<div class="playcontrol">

    <table class="gallery_lecteur" style="width: 500px;" align="right">
        <tbody>
        <tr class="odd">
            <td align="center" style="vertical-align:bottom;">
                <div class="playcontrolactions">
                    <div class="btncontrol">
                        <a href="#" class="prec rHover" onclick="cAudio('prev', false, event);return false;"><img style="opacity: 0.5;" src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/previous.gif" title="<{$smarty.const._MD_TDMSOUND_BTNPREV}>" class="prevnext"></a>
                        <a href="#" class="play" onclick="return false;"><img src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/play_big.png" title="<{$smarty.const._MD_TDMSOUND_BTNPLAY}>"></a>
                        <a href="#" class="suiv rHover" onclick="cAudio('next', false, event);return false;"><img style="opacity: 1;" src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/next.gif" title="<{$smarty.const._MD_TDMSOUND_BTNNEXT}>" class="prevnext"></a>
                    </div>
                </div>
                <br>
                <div class="volControl">
                    <a href="#" class="volumeMoins rHover" onclick="modifSound('moins');return false;"><img src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/mutedel.png" title="<{$smarty.const._MD_TDMSOUND_BTNMUTEM}>"></a>
                    <img src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/mute.png">
                    <a href="#" class="volumePlus rHover" onclick="modifSound('plus');return false;"><img src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/muteadd.png" title="<{$smarty.const._MD_TDMSOUND_BTNMUTEP}>"></a>
                </div>
            </td>
            <td align="center" style="vertical-align:middle;">
                <p class="position">00:00</p>
                <p class="titre">Title</p>

                <div id="divratio">
                    <span style="width: 190px;" id="divloadratio"></span>
                    <span style="width: 48px;" id="divplayratio"></span>
                </div>

            </td>
            <td align="center" width="40" style="vertical-align:middle;">
                <div class="contcover">
                    <img class="sound_img" src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/cover.png">
                </div>
            </td>
        </tr>
        <tr class="odd">
            <td colspan="5" align="right">
                <div class="boutonsaction">
                    <div class="toutalbum">
                        <a href="#" id="playAll" class="listenAll pdg_l_sm rHover" onclick="PlayList(event, this);"><img src="<{$xoops_url}>/modules/<{$dirname}>/assets/images/playlist.gif" title="<{$smarty.const._MD_TDMSOUND_BTNPLAYALL}>"></a>
                    </div>
                </div>

                <a id="ecoutes"></a>

                <div id="lecteur">
                    <object type="application/x-shockwave-flash" data="audioPlayer.swf" id="audioPlayer" width="1" height="1">
                        <param name="allowScriptAccess" value="always">
                        <param name="movie" value="audioPlayer.swf">
                        <embed type="application/x-shockwave-flash" src="audioPlayer.swf" style="" id="audioPlayer" name="audioPlayer" bgcolor="#FFFFFF" quality="autohigh" wmode="transparent" menu="false" play="true" allowscriptaccess="always" width="1" height="1">
                    </object>
                </div>
            </td>
        </tr>

        </tbody>
    </table>


    <script type="text/javascript">
        var currTab = "";
        currTab = "#TDMSoundDirect";
        $(document).ready(function () {

            initShowUpPlayer(currTab);
        });

        $(function () {
            $("#tabs").tabs({
                collapsible: true
            });
        });
    </script>

    <br class="clear"> <br>


    <div id="tabs">
        <ul>
            <li><a id="tbs0" href="#TDMSoundDirect"><span><{$lecteur_tabs}></span></a></li>

            <li <{if="" !$perm_playlist}=""> style="display:none;" <{/if}> ><a id="tbs1" href="#TDMPlaylist" onclick="funct_PlayList();"><span><{$smarty.const._MD_TDMSOUND_FILEPLAYLIST}></span></a>
            </li>

            <li><a id="tbs2" href="#TDMSound2"><span><{$smarty.const._MD_TDMSOUND_FILEECOUTE}></span></a></li>

            <li <{if="" !$comment_view}=""> style="display:none;" <{/if}> ><a id="tbs3" href="#TDMComment"><span><{$smarty.const._MD_TDMSOUND_FILECOMMENT}></span></a>
            </li>

        </ul>
        <br class="clear">


        <!-- fichier les plus vue -->
        <div id="TDMSoundDirect" style="height:600px; overflow-y: auto;">
            <{if $numfile == 0}>
                <div class="head" align="center">
                    <{$smarty.const._MD_TDMSOUND_NONEFILE}>
                </div>
            <{/if}>
            <{foreach item=files from=$files}>
                <{include file="db:tdmpicture_tpfile.tpl"}>
            <{/foreach}>
        </div>
        <!-- fichier playlist  -->
        <div id="TDMPlaylist" style="height:600px; overflow-y: auto;">
        </div>

        <!-- Fichier selectionner  -->
        <div id="TDMSound2" style="height:600px; overflow-y: auto;">
        </div>

        <{if $comment_view}>
            <div id="TDMComment" style="height:600px; overflow-y: auto;">
                <div style="text-align: center; padding: 3px; margin: 3px;">
                    <{$commentsnav}>
                    <{$lang_notice}>
                </div>
                <!-- start comments loop -->
                <div style="margin: 3px; padding: 3px;">
                    <{if $comment_mode == "flat"}>
                        <{include file="db:system_comments_flat.tpl"}>
                    <{elseif $comment_mode == "thread"}>
                        <{include file="db:system_comments_thread.tpl"}>
                    <{elseif $comment_mode == "nest"}>
                        <{include file="db:system_comments_nest.tpl"}>
                    <{/if}>
                </div>
            </div>
        <{/if}>
    </div>
</div>
