var videoPlayer = document.getElementById("pop_up");

function playbtn(){
    if(videoPlayer.style.display == "none"){
        videoPlayer.style.display = "flex";
        document.getElementById('adVideo').play();
    }
    else{
        videoPlayer.style.display = "none"
        document.getElementById('adVideo').pause();
    }
}