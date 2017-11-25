<table class="outer">
    <tbody>
    <tr>
        <td class="odd">

            <table class="gallery_title" id="gallery_<{$files.file_track}>">
                <tbody>
                <tr>
                    <td width="10%">
                        <img class="sound_img" id="cover_<{$files.file_track}>" src="<{$files.file_album_img}>">
                    </td>
                    <td align="left" width="50%">
                        <span class="soundTitle" align="left"><span class="nametract" id="<{$files.file_id}>"><a id="<{$files.file_track}>" href="<{$files.file_trackurl}>" class="titletrack" onclick="PlayMedia(event, $(this));"><{$files.file_title}></a></span></span><br>
                        <span class="soundInfo" align="left"><a href="<{$xoops_url}>/modules/<{$dirname}>/album.php?op=detail&AT=<{$files.file_album}>"><{$files.file_album_title}></a> By <a
                                    href="<{$xoops_url}>/modules/<{$dirname}>/artiste.php?op=detail&AT=<{$files.file_artiste}>"><{$files.file_artiste_title}></a></span><br>
                        <span class="soundGenre" align="left"><{$files.file_hits}> <{$smarty.const._MD_TDMSOUND_HITS}>
                            - <{$files.file_dl}> <{$smarty.const._MD_TDMSOUND_DL}></span><br><br>
                        <span class="soundGenre" align="left"><a href="<{$xoops_url}>/modules/<{$dirname}>/genre.php?LT=<{$files.file_genre_id}>"><{$files.file_genre}></a></span><br><br>
                        <span class="soundGenre" align="left"><a href="javascript:;"><img src="./images/sound_voteadd.png" onclick="AddVote(<{$files.file_id}>, 'file');return false;"> </a><a href="javascript:;"><img src="./images/sound_voteremove.png"
                                                                                                                                                                                                                        onclick="RemoveVote(<{$files.file_id}>, 'file');return false;"></a> <{$files.file_moyen}></span>
                    </td>
                    <td class="soundNote" align="center" width="20%">
                        <{$files.file_taglength}>
                        <br><br>
                        <a id="file_<{$files.file_track}>" href="javascript:;" onclick="RemovePlayList(<{$files.file_pl_id}>);return false;">
                            <img src="./images/sound_remove.png" title="<{$smarty.const._MD_TDMSOUND_BTNDELLIST}>"></a>
                        <a href="download.php?file_id=<{$files.file_id}>">
                            <img src="./images/sound_down.png" title="<{$smarty.const._MD_TDMSOUND_BTNDOWN}>"></a>
                    </td>
                    <td class="soundFull" align="right" width="20%">
                        <{$files.file_tagchannel}><br>
                        <{$files.file_tagid}><br>
                        <{$files.file_tagsize}><br>
                        <{$files.file_tagframerate}><br>
                        <{$files.file_tagbyterate}>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
        <td class="odd" width="50px" style="vertical-align: middle;"><a id="<{$files.file_track}>" href="<{$files.file_trackurl}>" class="titletrack" onclick="PlayMedia(event, $(this));"><img class="<{$files.file_track}>" src="./images/play_big.png"
                                                                                                                                                                                                title="<{$smarty.const._MD_TDMSOUND_BTNPLAY}>"></a></td>
    </tr>
    </tbody>
</table>
