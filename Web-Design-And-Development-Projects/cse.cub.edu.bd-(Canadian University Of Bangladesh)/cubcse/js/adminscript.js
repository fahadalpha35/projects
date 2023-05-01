// Pen by ArcSinDesign.com - Follow https://codepen.io/BoiseDigital/

//It's a bit of programming pun, you see
function biograph(e) {
	if(e.className == 'about__slot') {
		e.className = 'about__slot bio';
	}
	else {
		e.className = 'about__slot';
	}
}