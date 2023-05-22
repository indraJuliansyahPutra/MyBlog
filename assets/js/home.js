$(document).ready(function(){
    // Add hover effect to article titles
    $('li.list-group-item').hover(function(){
      $(this).css('background-color', '#f5f5f5');
    }, function(){
      $(this).css('background-color', 'transparent');
    });
  });