jQuery(document).ready(function() {
  
  $('.more-btn').on('click', function(e){
    e.preventDefault();
    $(this).toggleClass('opened')
    $(this).parent().parent().find('.member-info-plus').slideToggle();
  });
  
});