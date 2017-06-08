
// Infobar Hide/Show
jQuery(document).ready(function($) {
	
	$('#infobar').hide();

	$('#slide-toggle').click(function() {
		$('#infobar').slideToggle(400);
		return false;  
	});

	$("#slide-toggle").click(function () {
		$(this).toggleClass("hide");
	});
});

// Top Menu
jQuery(document).ready(function($){ 
    $('ul.top-menu').superfish({
        delay:       500,
        speed:       'fast',
        dropShadows: false
    }); 

	// Mobile Menu
	var $menu_select = $("<select />"); 
	$("<option />", {"selected": "selected", "value": "", "text": "Site Navigation"}).appendTo($menu_select);
	$menu_select.appendTo("#primary-menu");
	
	$("#primary-menu ul li a").each(function(){
		var menu_url = $(this).attr("href");
		var menu_text = $(this).text();

		if ($(this).parents("li").length == 2) { menu_text = '- ' + menu_text; }
		if ($(this).parents("li").length == 3) { menu_text = "-- " + menu_text; }
		if ($(this).parents("li").length > 3) { menu_text = "--- " + menu_text; }
		$("<option />", {"value": menu_url, "text": menu_text}).appendTo($menu_select)
	})
	
	field_id = "#primary-menu select";
	$(field_id).change(function()
	{
		value = $(this).attr('value');
		window.location = value;
	});
});

// Portfolio
jQuery(document).ready(function($){

	// Initialize prettyPhoto plugin
	$("a[rel^='prettyPhoto']").prettyPhoto({
		theme:'light_square', 
		autoplay_slideshow: false, 
		overlay_gallery: false, 
		show_title: false
	});

	// Clone portfolio items to get a second collection for Quicksand plugin
	var $portfolioClone = $(".portfolio").clone();
	
	// Attempt to call Quicksand on every click event handler
	$(".filter a").click(function(e){
		
		$(".filter li").removeClass("current");	
		
		// Get the class attribute value of the clicked link
		var $filterClass = $(this).parent().attr("class");

		if ( $filterClass == "all" ) {
			var $filteredPortfolio = $portfolioClone.find("li");
		} else {
			var $filteredPortfolio = $portfolioClone.find("li[data-type~=" + $filterClass + "]");
		}
		
		// Call quicksand
		$(".portfolio").quicksand( $filteredPortfolio, { 
			duration: 1000, 
			easing: 'easeInOutQuad' 
		}, function(){
			
			// Blur newly cloned portfolio items on mouse over and apply prettyPhoto
			$(".portfolio a").hover( function(){ 
				$(this).children("img").animate({ opacity: 0.75 }, "fast"); 
			}, function(){ 
				$(this).children("img").animate({ opacity: 1.0 }, "slow"); 
			}); 
			
			$("a[rel^='prettyPhoto']").prettyPhoto({
				theme:'light_square', 
				autoplay_slideshow: false, 
				overlay_gallery: false, 
				show_title: false
			});
		});

		$(this).parent().addClass("current");

		// Prevent the browser jump to the link anchor
		e.preventDefault();
	})
});

// Gallery
jQuery(document).ready(function($){
	$(".gallery a[rel^='prettyPhoto']").prettyPhoto({
		theme:'light_square', 
		autoplay_slideshow: false, 
		overlay_gallery: true, 
		show_title: true
	});
});

// Subscribe form
jQuery(document).ready(function($) {

	$('#subscribe').submit(function(){

		var action = $(this).attr('action');

		$("#notice-messages").slideUp(750,function() {
		$('#notice-messages').hide();

		$.post(action, {
			name: $('#name').val(),
			email: $('#email').val()
		},
			function(data){
				document.getElementById('notice-messages').innerHTML = data;
				$('#notice-messages').slideDown('slow');
				$('#submit').removeAttr('disabled');
				if(data.match('success') != null) $('#subscribe').slideUp('slow');
			});
		});
		return false;
	});
});

// Contact form
jQuery(document).ready(function($) {

	$('#contactform').submit(function(){

		var action = $(this).attr('action');

		$("#form-message").fadeOut(750,function() {
		$('#form-message').hide();
		
		$.post(action, {
			name: $('#form-name').val(),
			email: $('#form-email').val(),
			phone: $('#form-phone').val(),
			subject: $('#form-subject').val(),
			comments: $('#form-comments').val(),
			verify: $('#form-verify').val()
		},
			function(data){
				document.getElementById('form-message').innerHTML = data;
				$('#form-message').slideDown('slow');
				$("#form-message").click(function() {
					$(this).slideUp('slow');
				});
				$('#submit').removeAttr('disabled');
				if(data.match('success') != null) $('#contactform').slideUp('slow');
			});
		});
		return false;
	});
});

// Tweet!
$(window).load(function() {
	$(".tweet").tweet({
		username: "jthemes1",
		count: 2,
		template: "{text}{time}",
		loading_text: "loading tweets...",
	});
});

// Tabs 
jQuery(document).ready(function($) {
	// Tabs style 1
	$(".tabs-style-1 .tab-content").hide();
	$(".tabs-style-1 ul.tabs li:first").addClass("active").show();
	$(".tabs-style-1 .tab-content:first").show();

	$(".tabs-style-1 ul.tabs li").click(function(e) {		
		$(".tabs-style-1 ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tabs-style-1 .tab-content").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn();
		e.preventDefault();
	});

	// Tabs style 2
	$(".tabs-style-2 .tab-content").hide();
	$(".tabs-style-2 ul.tabs li:first").addClass("active").show();
	$(".tabs-style-2 .tab-content:first").show();

	$(".tabs-style-2 ul.tabs li").click(function(e) {		
		$(".tabs-style-2 ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tabs-style-2 .tab-content").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn();
		e.preventDefault();
		});

	// Tabs style 3
	$(".tabs-style-3 .tab-content").hide();
	$(".tabs-style-3 ul.tabs li:first").addClass("active").show();
	$(".tabs-style-3 .tab-content:first").show();

	$(".tabs-style-3 ul.tabs li").click(function(e) {		
		$(".tabs-style-3 ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tabs-style-3 .tab-content").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn();
		e.preventDefault();
		});

	// Tabs style 4
	$(".tabs-style-4 .tab-content").hide();
	$(".tabs-style-4 ul.tabs li:first").addClass("active").show();
	$(".tabs-style-4 .tab-content:first").show();

	$(".tabs-style-4 ul.tabs li").click(function(e) {		
		$(".tabs-style-4 ul.tabs li").removeClass("active");
		$(this).addClass("active");
		$(".tabs-style-4 .tab-content").hide();
		var activeTab = $(this).find("a").attr("href");
		$(activeTab).fadeIn();
		e.preventDefault();
	});
});

// Accordion & Toggle 
jQuery(document).ready(function($) {
	// Accordion style 1
	$('.accordion-style-1 .accordion-container').hide();
	$('.accordion-style-1 .accordion-trigger:first').addClass('active').next().show(); // First item active
	$('.accordion-style-1 .accordion-trigger').click(function(e){
		if( $(this).next().is(':hidden') ) {
			$('.accordion-style-1 .accordion-trigger').removeClass('active').next().slideUp();
			$(this).toggleClass('active').next().slideDown();
		} else {
			$('.accordion-style-1 .accordion-trigger').removeClass('active').next().slideUp();
		}
		e.preventDefault();
	});

	// Accordion style 2
	$('.accordion-style-2 .accordion-container').hide();
	$('.accordion-style-2 .accordion-trigger:first').addClass('active').next().show(); // First item active
	$('.accordion-style-2 .accordion-trigger').click(function(e){
		if( $(this).next().is(':hidden') ) {
			$('.accordion-style-2 .accordion-trigger').removeClass('active').next().slideUp();
			$(this).toggleClass('active').next().slideDown();
		} else {
			$('.accordion-style-2 .accordion-trigger').removeClass('active').next().slideUp();
		}
		e.preventDefault();
	});

	// Toggle style 1
	$(".toggle-style-1 .toggle-container").hide();
	$('.toggle-style-1 .toggle-trigger:first').addClass('active').next().show(); // First item active
	$(".toggle-style-1 .toggle-trigger").click(function(){
		$(this).toggleClass("active").next().slideToggle("slow");
		return false;
	});

	// Toggle style 2
	$(".toggle-style-2 .toggle-container").hide();
	$('.toggle-style-2 .toggle-trigger:first').addClass('active').next().show(); // First item active
	$(".toggle-style-2 .toggle-trigger").click(function(){
		$(this).toggleClass("active").next().slideToggle("slow");
		return false;
	});
});


// Alert Boxes
jQuery(document).ready(function($) {
	$(".hide").click(function() {
		$(this).fadeOut(600);
	});
});

// TipTip
jQuery(document).ready(function($) {
	$(".has-tip").tipTip({
		maxWidth: "200px",
		edgeOffset: 10,
		defaultPosition: "top"
	});

	$(".has-tip.bottom").tipTip({
		defaultPosition: "bottom"
	});

	$(".has-tip.right").tipTip({
		defaultPosition: "right"
	});

	$(".has-tip.left").tipTip({
		defaultPosition: "left"
	});
});

// Testimonial slide
jQuery(document).ready(function($) {
	$('.testimonial-slide').flexslider({
		animation: "slide",
		controlNav: false
	});
});

// Testimonial slide
jQuery(document).ready(function($) {
	$('.testimonial-fade').flexslider({
		animation: "fade",
		controlNav: false
	});
});

// Google maps
jQuery(document).ready(function($) { // or $(document).ready(function(){
	$("#gmap").gmap3 ({
		action: 'addMarker',
		address: "Piccadilly Circus, London",
		map:{
			center: true,
			zoom: 16
		}
	});	 
});

// Flex slider
$(window).load(function() {
	$('.flexslider').flexslider({
		animation: "slide",
		pauseOnAction: false,
    	pauseOnHover: true
	});

	// Carousel
	$('.carousel').flexslider({
		animation: "slide",
		itemWidth: 210,
		itemMargin: 10,
		minItems: 2,
		maxItems: 4,
		controlNav: false,
		pauseOnAction: false,
    	pauseOnHover: true
	});

});

// Sequence slider
/mobile/i.test(navigator.userAgent) && !location.hash && setTimeout(function () {
	if (!pageYOffset) window.scrollTo(0, 1);
}, 1000);

$(window).load(function() {
	var options = {
		nextButton: true,
		prevButton: true,
		pauseButton: true,
		animateStartingFrameIn: true,
		transitionThreshold: 250
	};

	var sequence = $("#sequence").sequence(options).data("sequence");

	// Sequence navigation
	sequence.afterLoaded = function(){
		$("#sequence-nav").fadeIn(100);
		$("#sequence-nav li:nth-child("+(sequence.settings.startingFrameID)+") img").addClass("active");
	}

	sequence.beforeNextFrameAnimatesIn = function(){
		$("#sequence-nav li:not(:nth-child("+(sequence.nextFrameID)+")) img").removeClass("active");
		$("#sequence-nav li:nth-child("+(sequence.nextFrameID)+") img").addClass("active");
	}
	
	$("#sequence-nav li").click(function(){
		if(!sequence.active){
			$(this).children("img").removeClass("active").children("img").addClass("active");
			sequence.nextFrameID = $(this).index()+1;
			sequence.goTo(sequence.nextFrameID);
		}
	});
});