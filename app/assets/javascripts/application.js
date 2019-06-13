// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require jquery.slick
//= require_tree .

$(function(){

	var navHeight = $('#common-nav').outerHeight();
	var navPos = $('#common-nav').offset().top;

	$(window).on('load scroll', function(){
		var value = $(this).scrollTop();

		if (value > navPos){
			$('#common-nav').addClass('nav-fixed');
			$('main').css('margin-top', navHeight);
		} else {
			$('#common-nav').removeClass('nav-fixed');
			$('main').css('margin-top', '0');
		}
	});


	$('.news').hover(
		function(){
			$(this).children('.news-body').slideDown(500);
		},
		function(){
			$(this).children('.news-body').slideUp(500);
		}
	);

	$('.news-small').hover(
		function(){
			$(this).children('.news-small-body').slideDown(500);
		},
		function(){
			$(this).children('.news-small-body').slideUp(500);
		}
	);

	$('.film-link').hover(
		function(){
			$(this).next('.hover-link').fadeIn(2000);
		},
		function(){
			$(this).next('.hover-link').fadeOut(2000);
		}
	);


	$('#all-botton').click(function(){
		$('#all').css('display','block');
		$('#country').css('display','none');
		$('#category').css('display','none');
	});

	$('#country-botton').click(function(){
		$('#country').css('display','block');
		$('#all').css('display','none');
		$('#category').css('display','none');
	});

	$('#category-botton').click(function(){
		$('#category').css('display','block');
		$('#all').css('display','none');
		$('#country').css('display','none');
	});
});