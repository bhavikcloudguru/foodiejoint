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

 <style type="text/css">
    .pg-normal {
        color: highlight;
        font-weight: bold;
        text-decoration: none;
        cursor: pointer;
    }
    
    .pg-selected {
        color: fuchsia;
        font-weight: bold;
        text-decoration: underline;
        cursor: pointer;
    }
    </style>
 
  <script type="text/javascript">
    function Pager(tableName, itemsPerPage) {
        this.tableName = tableName;
        this.itemsPerPage = itemsPerPage;
        this.currentPage = 1;
        this.pages = 0;
        this.inited = false;
        
        this.showRecords = function(from, to) {        
            var rows = document.getElementById(tableName).rows;
            // i starts from 1 to skip table header row
            for (var i = 1; i < rows.length; i++) {
                if (i < from || i > to)  
                    rows[i].style.display = 'none';
                else
                    rows[i].style.display = '';
            }
        }
        
        this.showPage = function(pageNumber) {
         if (! this.inited) {
          alert("not inited");
          return;
         }
    
            var oldPageAnchor = document.getElementById('pg'+this.currentPage);
            oldPageAnchor.className = 'pg-normal';
            
            this.currentPage = pageNumber;
            var newPageAnchor = document.getElementById('pg'+this.currentPage);
            newPageAnchor.className = 'pg-selected';
            
            var from = (pageNumber - 1) * itemsPerPage + 1;
            var to = from + itemsPerPage - 1;
            this.showRecords(from, to);
        }   
        
        this.prev = function() {
            if (this.currentPage > 1)
                this.showPage(this.currentPage - 1);
        }
        
        this.next = function() {
            if (this.currentPage < this.pages) {
                this.showPage(this.currentPage + 1);
            }
        }                        
        
        this.init = function() {
            var rows = document.getElementById(tableName).rows;
            var records = (rows.length - 1); 
            this.pages = Math.ceil(records / itemsPerPage);
            this.inited = true;
        }
    
        this.showPageNav = function(pagerName, positionId) {
         if (! this.inited) {
          alert("not inited");
          return;
         }
         var element = document.getElementById(positionId);
         
         var pagerHtml = '<span onclick="' + pagerName + '.prev();" class="pg-normal"> « Prev </span> | ';
            for (var page = 1; page <= this.pages; page++) 
                pagerHtml += '<span id="pg' + page + '" class="pg-normal" onclick="' + pagerName + '.showPage(' + page + ');">' + page + '</span> | ';
            pagerHtml += '<span onclick="'+pagerName+'.next();" class="pg-normal"> Next »</span>';            
            
            element.innerHTML = pagerHtml;
        }
    }
    </script>
 
</head>

<body class="thrColAbs bodyColor">
<jsp:include page="header.html"></jsp:include>

<div id="container">
  
  <div id="mainContent">

<br /><br /><br />
	
		 	<div class="hotelName"><a style="font-family:'Arial Rounded MT Bold';font-size:30px;font-weight:bold;color:#ffffff">Restaurants in Goa</a></div>
            <hr />
            <table style="border-collapse:collapse" cellpadding="6" cellspacing="6" width="100%">
           	
            <tr>
            <td style="width:25%;color:#ffffff; vertical-align:top">
            <br />
            <div>
            <div style="background-color:#006699">LOCATION</div>
            <select>
            	<option>Panaji</option>
                <option>Margao</option>
            </select>
            </div>
            <br />
            <div>
             <div style="background-color:#006699">CUISINE</div>
            <select>
            	<option>North Indian</option>
                <option>Chinese</option>
            </select>
            </div>
            <br />
            <div>
             <div style="background-color:#006699">COST for two</div>
            <select>
            	<option>Less than Rs.500</option>
                <option>More than Rs.500</option>
            </select>
            </div>
            </td>
            <td style="width:75%;color:#333333;font-size:14px;font-family:Arial">
            	<br />
            	
            	<table id="results" style="width: 100%">
            	<tr>
            		<td>
                	<a style="color:#009966;font-size:18px; font-weight:bold" href="RestaurantDetails.jsp">Hoppipola - All Day Bar and Restuarant</a>
                   <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div>
                    <br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 1000<br />
                    <br />
            		<hr />
                    </td>
               </tr>
               <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Rasha</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                     Aundh, Pune<br />
                    Cost for 2: Rs. 1000<br /><br />
                    <hr />
               </td>
               </tr>
               <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Rahul Restaurant</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 600<br /><br />
                    <hr />
                </td>
               </tr>
               <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Ambar</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 400<br /><br />
                    <hr />
                
                </td>
               </tr>
            	<tr>
            		<td>
                	<a style="color:#009966;font-size:18px; font-weight:bold">Hoppipola - All Day Bar and Restuarant</a>
                   <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div>
                    <br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 1000<br /><br />
                    <hr />
               </td>
               </tr>
               <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Rasha</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                     Aundh, Pune<br />
                    Cost for 2: Rs. 1000<br /><br />
                    <hr />
               </td>
               </tr>
               <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Rahul Restaurant</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 600<br /><br />
                    <hr />
                </td>
               </tr>
                <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Ambar</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 400<br /><br />
                    <hr />
                
                </td>
               </tr>
            	<tr>
            		<td>
                	<a style="color:#009966;font-size:18px; font-weight:bold">Hoppipola - All Day Bar and Restuarant</a>
                   <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div>
                    <br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 1000<br /><br />
                    <hr />
               </td>
               </tr>
                <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Rasha</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                     Aundh, Pune<br />
                    Cost for 2: Rs. 1000<br /><br />
                    <hr />
               </td>
               </tr>
               <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Rahul Restaurant</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 600<br /><br />
                    <hr />
                </td>
               </tr>
               <tr>
            		<td>
                	<a style="color:#009966;font-size:18px;font-weight:bold">Ambar</a>
                    <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div><br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 400<br /><br />
                	<hr />
                </td>
               </tr>
            	<tr>
            		<td>
                	<a style="color:#009966;font-size:18px; font-weight:bold">Hoppipola - All Day Bar and Restuarant</a>
                   <div style="float:right"> <img style="width:50px;height:50px" src="../images/bigstarRate.jpg"/></div>
                    <br />
                    Aundh, Pune<br />
                    Cost for 2: Rs. 1000<br /><br />
                    <hr />
               </td>
               </tr>
               
               
               </table>
               <div id="pageNavPosition"></div>
               
                <script type="text/javascript"><!--
            var pager = new Pager('results', 10); 
            pager.init(); 
            pager.showPageNav('pager', 'pageNavPosition'); 
            pager.showPage(1);
       		 //--></script>
        
            </td>
            </tr>
            
            </table> 
          
    
   
                        
            <br/>
            </div>
    
</div>
       <jsp:include page="footer.html"></jsp:include>   
</body>
  
</html>
