$(document).ready(function() {
  var container = $('ul.galleries');
  container.isotope();

  // Filter items when filter link is clicked
  $('ul.galleries-filters a').click(function() {
    var selector = $(this).attr('data-filter');
    container.isotope({ filter: selector });
    return false;
  });
});
