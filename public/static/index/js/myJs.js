
    function commonTab(s,a,i){var l=s.index();s.addClass(i).siblings().removeClass(i),a.eq(l).addClass(i).siblings().removeClass(i)}function switchClas(s,a){s.addClass(a).siblings().removeClass(a)}
    $(function(){
    function footFix() {
        $('.footer_box').removeClass('fixed')
    
        var contentHeight = document.body.scrollHeight,
          windowHeight = window.innerHeight
    
        if (!(contentHeight > windowHeight)) {
          $('.footer_box').addClass('fixed')
        } else {
          $('.footer_box').removeClass('fixed')
        }
      }
    
      footFix();
    
      $(window).resize(footFix)
})

