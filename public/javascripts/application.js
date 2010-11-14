// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  $(document).bind("mobileinit", function(){
    $.extend( $.mobile , {
      ajaxLinksEnabled: false,
      ajaxFormsEnabled: false
    });
  });
  
$(document).ready(function() {
  $('.countdown').each(function(){
    $(this).countdown({until: $(this).attr('data-time'), format:'wdhmS'}); 
  });

	
});
  

