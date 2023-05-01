// Loop selectors
var videos = document.querySelectorAll(".youtube");
for (var i = 0; i < videos.length; i++) {
	var youtube = videos[i];
	// Get function
	getVideos(youtube);
}

// Get videos function
function getVideos(el) {
	var img = document.createElement("img");
	// Get minified images
	img.setAttribute('src', 'album1/1.jpg'); // other types : https://www.thewebtaylor.com/articles/how-to-get-a-youtube-videos-thumbnail-image-in-high-quality
	// Insert tag
	el.appendChild(img);
	// On click get video
	el.addEventListener('click', function () {
		var iframe = document.createElement("iframe");
		iframe.setAttribute('class', 'youtube_video');
		iframe.setAttribute('src', 'https://www.youtube.com/embed/8PU6TkO1Ngo');
		// Replace img for video
		this.parentNode.replaceChild(iframe, this);
	}, false);
}