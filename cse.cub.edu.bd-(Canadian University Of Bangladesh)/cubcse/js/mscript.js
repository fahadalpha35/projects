document.querySelector('.js-accent-color').addEventListener('change', (e) => {
	document.documentElement.style.setProperty('--accent-color', e.target.value)
})