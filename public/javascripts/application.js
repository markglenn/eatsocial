// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).bind("mobileinit", function(){
  //apply overrides here
});

$('.countdown').each(function(){
  $(this).countdown({until: $(this).attr('data-date')})
});
