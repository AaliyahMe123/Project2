$(function(){
  $('.grid').masonry({
    itemSelector: '.grid-item',
    columnWidth: 200,
    isFitWidth: true,
    gutter: 10
  });
  $("button").click(function(){
      $("p").slideToggle
  })
});

// console.log('loaded')
