<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FoodieJoint</title>
<script type="text/javascript" src="../javascripts/jquery-1.10.2.js"></script>
<script type="text/javascript"
	src="../javascripts/jquery.carouFredSel-6.2.1-packed.js"></script>

<script type="text/javascript" src="../javascripts/jquery.ui.core.js"></script>
<script type="text/javascript" src="../javascripts/jquery.ui.widget.js"></script>
<script type="text/javascript" src="../javascripts/jquery.ui.tabs.js"></script>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link href="../css/modal.css" rel="stylesheet" type="text/css" />
<link href="../css/foodie.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="../css/jquerycss/jquery-ui.css" />

<link rel="stylesheet" type="text/css"
	href="../css/jquerycss/jquery.ui.all.css" />

<link rel="stylesheet" type="text/css" href="../css/carousel.css" />
<script type="text/javascript">
	$(function() {
		/*document.ready function. Put all the javascript/jQUery code to be excuted on
		load of the body*/
		$('#slider')
				.carouFredSel(
						{
							width : '100%',
							align : false,
							items : 3,
							items : {
								width : $('#wrapper').width() * 0.15,
								height : 500,
								visible : 1,
								minimum : 1
							},
							scroll : {
								items : 1,
								timeoutDuration : 5000,
								onBefore : function(data) {

									//	find current and next slide
									var currentSlide = $('.slide.active', this), nextSlide = data.items.visible, _width = $(
											'#wrapper').width();

									//	resize currentslide to small version
									currentSlide.stop().animate({
										width : _width * 0.15
									});
									currentSlide.removeClass('active');

									//	hide current block
									data.items.old.add(data.items.visible)
											.find('.slide-block').stop()
											.fadeOut();

									//	animate clicked slide to large size
									nextSlide.addClass('active');
									nextSlide.stop().animate({
										width : _width * 0.7
									});
								},
								onAfter : function(data) {
									//	show active slide block
									data.items.visible.last().find(
											'.slide-block').stop().fadeIn();
								}
							},
							onCreate : function(data) {

								//	clone images for better sliding and insert them dynamacly in slider
								var newitems = $('.slide', this).clone(true), _width = $(
										'#wrapper').width();

								$(this).trigger('insertItem',
										[ newitems, newitems.length, false ]);

								//	show images 
								$('.slide', this).fadeIn();
								$('.slide:first-child', this)
										.addClass('active');
								$('.slide', this).width(_width * 0.15);

								//	enlarge first slide
								$('.slide:first-child', this).animate({
									width : _width * 0.7
								});

								//	show first title block and hide the rest
								$(this).find('.slide-block').hide();
								$(this).find('.slide.active .slide-block')
										.stop().fadeIn();
							}
						});

		//	Handle click events
		$('#slider').children().click(function() {
			$('#slider').trigger('slideTo', [ this ]);
		});

		//	Enable code below if you want to support browser resizing
		$(window).resize(function() {

			var slider = $('#slider'), _width = $('#wrapper').width();

			//	show images
			slider.find('.slide').width(_width * 0.15);

			//	enlarge first slide
			slider.find('.slide.active').width(_width * 0.7);

			//	update item width config
			slider.trigger('configuration', [ 'items.width', _width * 0.15 ]);
		});

		//The tabs below the carousel 
		$("#myTabs").tabs();
	});
</script>
</head>
<body>
	<!-- <iframe src="header.html" style="width:100%"></iframe> -->
	<jsp:include page="header.html"></jsp:include>
	<div id="bodyContent">
		<br /> <br /> <br />
		<!-- Accomodate the fixed header -->
		<div id="wrapper">
			<div class="caroufredsel_wrapper wrapperAdded">
				<div style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 3777.2px; height: 500px; z-index: auto;"
					id="slider">
					<div class="slide active"
						style="background-image: url(&quot;../images/iceage.jpg&quot;); display: block; width: 944.3px;">
						<div style="display: block;" class="slide-block">
							<h4>
								<a href="RestaurantList.jsp">Ice Age</a>
							</h4>
							<p>Heading south to avoid a bad case of global frostbite, a
								group of migrating misfit creatures embark on a hilarious quest
								to reunite a human baby with his tribe.</p>
						</div>
					</div>
					<div class="slide"
						style="background-image: url(&quot;../images/birds.jpg&quot;); display: block; width: 202.35px;">
						<div style="display: none;" class="slide-block">
							<h4>
								<a href="RestaurantDetails.jsp">For The Birds</a>
							</h4>
							<p>For the Birds is an animated short film, produced by Pixar
								Animation Studios released in 2000. It is shown in a theatrical
								release of the 2001 Pixar feature film Monsters, Inc.</p>
						</div>
					</div>
					<div class="slide"
						style="background-image: url(&quot;../images/up.jpg&quot;); display: block; width: 202.35px;">
						<div style="display: none;" class="slide-block">
							<h4>
								<a href="RestaurantList.jsp">UP</a>
							</h4>
							<p>A comedy adventure in which 78-year-old Carl Fredricksen
								fulfills his dream of a great adventure when he ties thousands
								of balloons to his house and flies away to the wilds of South
								America.</p>
						</div>
					</div>
					<div class="slide"
						style="background-image: url(&quot;../images/iceage.jpg&quot;); display: block; width: 202.35px;">
						<div style="display: none;" class="slide-block">
							<h4>
								<a href="RestaurantDetails.jsp">Ice Age</a>
							</h4>
							<p>Heading south to avoid a bad case of global frostbite, a
								group of migrating misfit creatures embark on a hilarious quest
								to reunite a human baby with his tribe.</p>
						</div>
					</div>
					<div class="slide"
						style="background-image: url(&quot;../images/birds.jpg&quot;); display: block; width: 202.35px;">
						<div style="display: none;" class="slide-block">
							<h4>
								<a href="RestaurantList.jsp">For The Birds</a>
							</h4>
							<p>For the Birds is an animated short film, produced by Pixar
								Animation Studios released in 2000. It is shown in a theatrical
								release of the 2001 Pixar feature film Monsters, Inc.</p>
						</div>
					</div>
					<div class="slide"
						style="background-image: url(&quot;../images/up.jpg&quot;); display: block; width: 202.35px;">
						<div style="display: none;" class="slide-block">
							<h4>UP</h4>
							<p>A comedy adventure in which 78-year-old Carl Fredricksen
								fulfills his dream of a great adventure when he ties thousands
								of balloons to his house and flies away to the wilds of South
								America.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br />
		<div id="myTabs">
			<ul>
				<li><a href="#tabs-1">Top Foodies</a></li>
				<li><a href="#tabs-2">Top Recommendations</a></li>
				<li><a href="#tabs-3">Other Exciting stuff</a></li>
			</ul>
			<div id="tabs-1">
				<h3 style="color: #FF0000">Top Foodies</h3>

				<p>Foodies will be listed soon.</p>
			</div>
			<div id="tabs-2">
				<h3 style="color: #0099CC">Top Recommendations</h3>

				<p>- Pizza at Kudos</p>
				<p>- Buffet at Country Side</p>
			</div>
			<div id="tabs-3"></div>
		</div>
	</div>
	<!-- End of the div containing the main body excluding header and footer -->
	<jsp:include page="footer.html"></jsp:include>
</body>
</html>