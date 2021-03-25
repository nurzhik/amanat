$(document).ready(function(){


  $('#btn_change').on('click',function(){
     $('#change_id').val($(this).attr("data-id"));
  });
    $('.main_sliderrr').slick({
      autoplay: false,
      arrows: true,
      appendArrows: $('.slider_blog .slider_arrow'),
      dots: true,
      appendDots: $('.slider_blog .slider_number'),
      pauseOnHover: false,
      pauseOnFocus: false,
      speed: 1500,
      slidesToShow: 1,
      slidesToScroll: 1,
      prevArrow: '<button type="button" class="slick_arrow slick_prev"></button>',
      nextArrow: '<button type="button" class="slick_arrow slick_next"></button>',
      responsive:[{
        breakpoint: 401,
        settings:{
          slidesToShow: 1,
          slidesToScroll: 1,
        }
      }]
    });

    $('.car_carоusel').slick({
      autoplay: false,
      arrows: true,
      /* appendArrows: $('.fleet_shot .fleet_arrow'), */
      dots: false,
      infinite: true,
      focusOnSelect: true,
      centerMode: true,
      variableWidth: true,
      pauseOnHover: false,
      pauseOnFocus: false,
      speed: 1800,
      slidesToShow: 3,
      variableWidth: true,
      slidesToScroll: 1,
      prevArrow: '<button type="button" class="slick_arrow slick_prev"></button>',
      nextArrow: '<button type="button" class="slick_arrow slick_next"></button>',
      responsive:[{
        breakpoint: 570,
        settings:{
          slidesToShow: 1,
          slidesToScroll: 1,
          dots: true,
          appendDots: $('.slider_unit .slider_number'),
          /* appendArrows: $('.slider_unit .carousel_arrow'), */
        }     
      }]
    });

        // Car carousel

        if( $('.car_carоusel').hasClass('slick-slider') ){
          var total_count = $('.slider_unit').find('.slick-dots').children('li').length;
    
          $('.slider_unit').find('.count_total').text("1");
          $('.slider_unit').find('.count_current').text("" + total_count);
        }
    
        $('.car_carоusel ').on("afterChange", function(){
          var count = $('.slider_unit').find('.slick-dots').children('li.slick-active').index();
          count++;
          $('.slider_unit').find('.count_total').text("" + count);
        });
        // Car carousel END

    $('.partners_wrapper').slick({
      autoplay: false,
      arrows: true,
      appendArrows: $('.part_blog .part_arrow'),
      dots: true,
      appendDots: $('.part_blog .slider_number'),
      pauseOnHover: false,
      pauseOnFocus: false,
      speed: 1000,
      slidesToShow: 6,
      slidesToScroll: 2,
      prevArrow: '<button type="button" class="slick_arrow slick_prev"></button>',
      nextArrow: '<button type="button" class="slick_arrow slick_next"></button>',
      responsive:[{
        breakpoint: 1100,
        settings:{
          slidesToShow: 4,
          slidesToScroll: 1,
        }
      },
      {
        breakpoint: 880,
        settings:{
          slidesToShow: 3,
          slidesToScroll: 1,
        }
      },
    {
        breakpoint: 400,
        settings:{
          slidesToShow: 1,
          slidesToScroll: 1,
          focusOnSelect: true,
          centerMode: true,
        } 
      },
      ],    
    });
        // part carousel

        if( $('.partners_wrapper').hasClass('slick-slider') ){
          var total_count = $('.part_blog').find('.slick-dots').children('li').length;
          $('.part_blog').find('.part_total').text("1");
          $('.part_blog').find('.part_current').text("" + total_count);
        }
        $('.partners_wrapper').on("afterChange", function(){
          var count = $('.part_blog').find('.slick-dots').children('li.slick-active').index();
          count++;
          $('.part_blog').find('.part_total').text("" + count);
        });
  });

  $('.way').waypoint({
    handler: function() {
    $(this.element).addClass("way--active");
    },
    offset: '90%'
  });

  $(function () { 
    $('.personal_item').each(function () {
        var location = window.location.href;
        var link = this.href; 
        if(location == link) {
            $(this).addClass('active');
        }
    });
  });
  $(".size_change").ionRangeSlider({
    skin: 'round',
    hide_min_max: true,
    hide_from_to: true,
  });
  $(".size_chane").ionRangeSlider({
    skin: 'round',
    hide_min_max: true,
    hide_from_to: true,
  });

$('.lang_choice').on("click", function(){
    $(this).siblings('.other_lang').slideToggle(); 
    $(this).parent('.lang_block').toggleClass('active');
});


$('.often_head').on("click", function(){
    if( $(this).hasClass('active') ){
      $(this).removeClass('active');
      $(this).siblings('.often_body').slideUp(800);
    } else{
      $(this).addClass('active');
      $(this).siblings('.often_body').slideDown(800);
    }
});

createTabs ();
function createTabs(){  
    $('.auto-ul li a').on('click', function(e)  {
        var currentAttrValue = $(this).attr('href');
        $('.tab-auto ' + currentAttrValue).fadeIn(150).show().siblings().hide();
        $('.auto-ul li a').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
}

$('.mob_menu').on("click", function(){
  if($(this).hasClass('active')){
    $(this).removeClass('active');
    $('.under_nav').slideUp(700);
  }else{
    $(this).addClass('active');
    $('.under_nav').slideDown(700);
  }
})
$('.personal_payment_btn , .calc_btn').on("click", function(){
  if($(this).hasClass('active')){
    $(this).removeClass('active');
    $('.personal_under , .calc_change_under').slideUp(700);
  }else{
    $(this).addClass('active');
    $('.personal_under , .calc_change_under').slideDown(700);
  }
})

$(window).resize(function(){
  mobMenu();
  place();
})

function mobMenu(){
  if( $('.mob_menu').css("display") == 'block' ){
    $('header .container .header_bottom .header_ul').prependTo('.header_burger .under_nav');
    $('header .container .header_bottom .header_private').prependTo('.header_burger .under_nav');
  } else{
    $('.header_burger .under_nav .header_ul').prependTo('header .container .header_bottom');
    $('.header_burger .under_nav .header_private').prependTo('header .container .header_bottom');

  }
}
mobMenu(); 


/* при клике на любое место чтобы изчезал бургер */
$(document).on("click", function(event){
  var target = event.target;
  if( $('.mob_menu').css("display") == 'block' ){
    if( !$(target).hasClass('mob_menu') && !$(target).hasClass('menu_btn') && !$(target).hasClass('menu_btn_span') && !$(target).hasClass('header_ul li a')  && !$(target).hasClass('search_block') && !$(target).hasClass('lang_block')  && !$(target).hasClass('header_private') && !$(target).hasClass('search_input') && !$(target).hasClass('search_btn')){
      $('.mob_menu').removeClass('active');
      $('.under_nav').slideUp(700);
    }
  }
});

function place(){
  if( $('.container').width() < 444  ){
    $('header .container .header_right .header_top .header_quest .search').prependTo('.header_burger .under_nav');
  } else{
    $('.header_burger .under_nav .search').prependTo('header .container .header_right .header_top .header_quest');
  }
}

place();



  /* прокрутка цифр в каруселе*/

    // Main slider count

/*     if( $('.main_slider').hasClass('slick-slider') ){
      var total_count = $('.slider_blog').find('.slick-dots').children('li').length;

      $('.slider_blog').find('.count_total').text("");
      $('.slider_blog').find('.count_current').text("" + total_count);
    }

    $('.main_slider').on("afterChange", function(){
      var count = $('.slider_blog').find('.slick-dots').children('li.slick-active').index();
      count++;
      $('.slider_blog').find('.count_total').text("" + count);
    }); */

    // Main slider count END

    $(document).on("click", function(event){
      var target = event.target;
    
      if( !$(target).hasClass('lang_choice')  && !$(target).hasClass('lang_choice')){
        $('.other_lang').slideUp();
        $('.lang_block').removeClass('active');
      }
  });

  $('.size_change').on("change", function(){ 
      var val = $(this).val();
      $('.money').text(val);
  });

  $('.size_chane').on("change", function(){ 
      var val = $(this).val();
      $('.year').text(val);
  });


  $('#auto-calc').on("click", function(event){
    console.log('sdsds');
  });

  var price = parseInt( $('.money').text() );
  var term = parseInt( $('.year').text() );
  var general = price / month;
  var month = term * 12;
  var initial = 30;
  var result = price / 100 * initial;
  var opening  = 5;
  var outCome = price / 100 * opening;
  var membership  = 3000;
  
  
/* $('.conditions_btn').on('click', function(){
  if($('.calc_wrapper.calc_width').css("display") == 'none'){
    $('.calc_wrapper.calc_width').addClass('active');
    $('.calc_wrapper').css("display") == 'none';
  }else{
    $('.calc_result_btn').removeClass('active');
  }
}); */


console.log(total_count);