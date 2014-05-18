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
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<link href="../css/modal.css" rel="stylesheet" type="text/css" />
<link href="../css/styleRestaurantDetail.css" rel="stylesheet" type="text/css" />

<link rel="shortcut icon" href="../images/demopage/favicon.png">
<link rel="stylesheet" href="../css/lightbox.css">

<script src="../javascripts/lightbox.js"></script>

	<script>
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-2196019-1']);
	_gaq.push(['_trackPageview']);

	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();
</script>

<script type="text/javascript" charset="utf-8" src="../javascripts/jquery.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../javascripts/jquery.raty.min.js"></script>

<script type="text/javascript">
			
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-194992347-3']);
			_gaq.push(['_trackPageview']);
			
			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
</script>


 <style>
      #map_canvas {
        width: 100%;
        height: 200px;
      }
 </style>

 <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
      function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
          center: new google.maps.LatLng(18.523577, 73.841072),
          zoom: 10,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(map_canvas, map_options)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
   </script>


</head>
	<jsp:include page="header.html"></jsp:include>

<body class="thrColAbs bodyColor">

	<div id="container">

		<div id="mainContent">

	
	<br />
	<br />
	<br />
			<div class="hotelName">
				<a
					style="font-family: 'Arial Rounded MT Bold'; font-size: 30px; font-weight: bold; color: #ffffff">Marrakesh</a>
				<a style="color: #CCCCCC;">PANAJI</a>
			</div>
			<hr />
			<table style="border-collapse: collapse" cellpadding="2"
				cellspacing="2">
				<tr>
					<td><img style="width: 30px; height: 30px" src="../images/callus.png" />
					</td>
					<td class="numbers">9922296946</td>
					<td rowspan="2" style="width: 100%"><div style="float: right">
							<img style="width: 100%; height: 100px;" src="../images/pizza.jpg" />
						</div>
					</td>
				</tr>
				<tr>
					<td><img style="width: 30px; height: 30px" src="../images/findus3.jpg" />
					</td>
					<td style="color: #666666;">FC Road</td>
				</tr>
			</table>
			<hr />
			<br /> <a style="font-size: 12px"> User Rating : </a><a
				style="font-size: 12px; float: right"> Critic Rating : </a> <br />

			<div style="float: left">
				<img style="width: 50px; height: 50px" src="../images/bigstarRate.jpg" />
			</div>
			<div style="float: right">
				<a id="star"></a>
				<script type="text/javascript">
					$(function() {
						
						$('#star').raty({
							  readOnly : true,
							  score    : 3.5
							});
						
					});
				</script> <img style="width: 50px; height: 50px"
					src="../images/bigstarRate.jpg" />
			</div>
			<br />
			<!-- <img src="../images/star2.png" /> -->
			<a id="score" data-rating="3.5"></a>
				<script type="text/javascript">
					$(function() {
		
						$('#score').raty({
							  score: function() {
							    return $(this).attr('data-rating');
							  }
						});
			
					});
				</script>
			<br /> <a style="font-size: 10px">3.5/5
				based on 30 votes</a> <br /> <br />

			<hr />
			<table id="menuBar"
				style="width: 100%; text-align: center; color: #FFFFFF; border-collapse: collapse">
				<tr>
					<td><a class="menuItems" href="#">Info</a>
					</td>
					<td><a class="menuItems" href="#">Menu</a>
					</td>
					<td><a class="menuItems" href="#">Reviews</a>
					</td>
					<td><a class="menuItems" href="#">Map</a>
					</td>
					<td><a class="menuItems" href="#">Compare</a>
					</td>
				</tr>
			</table>
			<hr />

			<a style="color: #009966">CUISINES</a><br />
			<div style="float: right">
			
			<a class="example-image-link" href="../images/demopage/pizzaLarge.jpg" data-lightbox="example-set" data-title="Click the right half of the image to move forward."><img class="example-image" width="70px" height="50px" src="../images/demopage/pizza.jpg" alt=""/></a>
			<a class="example-image-link" href="../images/demopage/brownieLarge.jpg" data-lightbox="example-set" data-title="Or press the right arrow on your keyboard."><img class="example-image" width="70px" height="50px" src="../images/demopage/brownie.jpg" alt="" /></a>
			<a class="example-image-link" href="../images/demopage/pizzaLarge.jpg" data-lightbox="example-set" data-title="The next image in the set is preloaded as you're viewing."><img class="example-image" width="70px" height="50px" src="../images/demopage/pizza.jpg" alt="" /></a>
			
	
			
				<!-- <a style="color: #009966">PHOTOS</a><br /> <img src="../images/pizza.jpg"
					width="70px" height="50px" /> <img src="../images/brownie.jpg" width="70px"
					height="50px" /> <img src="../images/pizza.jpg" width="70px" height="50px" />-->
			</div>

			<a style="font-size: 13px">North Indian, Chinese</a> <br /> <br />
			<a style="color: #009966">COST for two</a><br /> <a
				style="font-size: 13px">Rs. 400 approx. (without alcohol)</a> <br />
			<br /> <a style="color: #009966">TIMING</a><br /> <a
				style="font-size: 13px">12 Noon to 4 PM, 7 PM to 11:30 PM</a> <br />
			<br />
			<a style="color: #009966">CHEF'S RECOMMENDATIONS</a> <img width="20px" height="20px" src="../images/chef.png"/><br /> <a
				style="font-size: 13px">Chicken Shawarma</a> <br />
			<br />
			<hr />
			<br />
			<table width="100%" style="border-collapse: collapse">
				<tr>
					<td colspan="3" style="color: #009966">ADD ONS</td>
				</tr>
				<tr style="font-size: 13px">
					<td><ul>
							<li>Home Delivery</li>
						</ul></td>
					<td><ul>
							<li>Air Conditioning</li>
						</ul>
					</td>
					<td><ul>
							<li>Outdoor Sitting</li>
						</ul>
					</td>
				</tr>
			</table>
			<hr />

			<a style="color: #009966">LOCATION</a><br /> 
			<br /> 	
			<div id="map_canvas"></div>
			<br />
		</div>
	</div>
	<br/>
</body>
	<jsp:include page="footer.html"></jsp:include>

</html>