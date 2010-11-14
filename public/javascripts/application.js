// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

  $(document).bind("mobileinit", function(){
    $.extend( $.mobile , {
      ajaxLinksEnabled: true,
      ajaxFormsEnabled: false
    });
  });
  
$(document).ready(function() {

  $('.countdown').each(function(){
    $(this).countdown({
      until: new Date(Date.parse($(this).attr('data-time'))), 
      format:'wdhm',
      tickInterval: 10,
      alwaysExpire: true,
      onExpiry: function(){
        $(this).parents( "li" ).slideUp( );
      }
    }); 
  });
  
  
	
});
  

