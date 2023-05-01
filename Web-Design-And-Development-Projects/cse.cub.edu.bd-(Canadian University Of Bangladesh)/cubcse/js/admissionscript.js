// Get our alert element
var alert = document.querySelector('.alert');

window.addEventListener('load', function (event) {
  // Tell CSS that it’s OK to start enhancing.
  document.documentElement.classList.add('cuts-the-mustard');
}, false);

// Add class to animate the alert into view.
// Note: this won’t work if applied at the same time as the ".cuts-the-mustard" class i.e. in the above onload event listener. They’d cancel each other out. It needs a timing gap hence the setTimeout.
window.setTimeout(function() {
  alert.classList.add('alert-visible');
}, 100);

// After a few seconds add a class on the element to have CSS remove it.
window.setTimeout(function() {
  alert.classList.add('alert-dismissed');
}, 5000);