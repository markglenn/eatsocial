// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$('.countdown').each(function(){
  $(this).countdown({until: $(this).attr('data-date')})
});
