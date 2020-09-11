window.update_track = function(track){
    clearInterval(window.timer);
    if(track === undefined || track === null){
        document.getElementById("video").contentWindow.location.replace("https://player.vimeo.com/video/455128631?autoplay=1&loop=0&autopause=0");
        document.getElementById("slido").contentWindow.location.replace("/cndt2020/tracks/blank");
        document.getElementById("twitter").href = "http://twitter.com/share?url=https://event.cloudnativedays.jp/cndt2020/&related=@cloudnativedays&hashtags=CNDT2020";
        document.getElementById("twitter").innerHTML = "Twitterでつぶやく<br/>#CNDT2020";
        document.getElementById("title").innerHTML = "放送開始までしばらくお待ちください";
        document.getElementById("abstract").innerHTML = "";
        document.getElementById("speakers").innerHTML = "";
        document.getElementById("time").innerHTML = "現在このトラックに放送中のセッションはありません。<br/>次のセッションをお待ちいただくか、他のトラックをご覧ください。";
        window.selected_talk_id = "0";
    }else{
        document.getElementById("video").contentWindow.location.replace("https://player.vimeo.com/video/" + track.video_id + "?autoplay=1&loop=0&autopause=0");
        document.getElementById("slido").contentWindow.location.replace(track.slido_id != "" ? `https://app.sli.do/event/${track.slido_id}` : "/cndt2020/tracks/blank?msg");
        document.getElementById("twitter").href = "http://twitter.com/share?url=https://event.cloudnativedays.jp/cndt2020/&related=@cloudnativedays&hashtags=CNDT2020_" + track.track_name;
        document.getElementById("twitter").innerHTML = "Twitterでつぶやく<br/>#CNDT2020_" + track.track_name;
        document.getElementById("title").innerHTML = track.title;
        document.getElementById("abstract").innerHTML = track.abstract;
        document.getElementById("speakers").innerHTML = track.speakers;
        document.getElementById("time").innerHTML = track.start_time + "-" + track.end_time;
        window.selected_talk_id = track.id;
        window.timer = setInterval(function(){
            tracker.track("watch_video", {
                track_name: track.track_name,
                talk_id: track.id
            });
        }, 120 * 1000);
    }
    document.querySelectorAll(".track_button").forEach(function(a){a.classList.remove('active')});
    document.querySelector('a[track_id="' + selected_track + '"]').classList.toggle('active');
}

window.check_update = function(track){
    if(track != undefined || track != null){
        if(window.selected_talk_id != track.id){
            update_track(track);
        }
    }
}