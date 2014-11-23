<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>CartWheel</title>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<link href="css/style.css" rel="stylesheet" type="text/css">
<script  src="Chart.js" /></script>
<style>
			canvas{
			}
		</style>


 <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>

<script>

	
function Refresh(){
	alert('inside refresh page');
	var uri = "rest/file/refresh";
	$.ajax({
		url : uri,
	    type: "GET",
	    datatype : "json",	     
	    success:function(data, textStatus, jqXHR){
		window.location.href="History.jsp";
	},
	error: function(jqXHR, textStatus, errorThrown){
		alert('Could not process request.. ' + errorThrown);
	}
	});
	}
</script>
</head>
<body>

		<div id="page">
		<div id="header">
			<div>
				<a href="index.html" class="logo"><img  src="images/cartwheel.jpg" alt="" ></a>
				<ul class="navigation">
					
					<li>
						<a href="about.html"><font color = "#8A0808" FONT FACE="algerian">Logout</font></a>
					</li>
					<li >
						<a href="History.jsp"><font color = "#8A0808"FONT FACE="algerian" id="History" > History</font></a>
					</li>
					<li class="middle">
						<a href="Cart.jsp"><font color = "#8A0808"FONT FACE="algerian">My Cart</font></a>
					</li>
				</ul>    
			</div>
		</div>
		<div id="body">


   <div id="container" style="padding-top: 10px;padding-left: 350px;">
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span5">
          <div  id="sidebar">
           
           <table align ="center">
           <tbody>
           
           <tr>
           <td>First Name </td>
           <td>: ${usersfirstname}</td>
           </tr>
           <tr>
           <td>Last Name </td>
           <td>: ${userslastname}</td>
           </tr>
           <tr>
           <td>Email Id </td>
           <td>: ${username}</td>
           </tr>
            <tr>
           <td>Last Logged in</td>
           <td>: ${lastloggedin}</td>
           </tr>
           </tbody>
           
           
           </table>
           
        
           
          </div><!--/.well -->
        </div><!--/span-->

      </div><!--/row-->
 </div>
 </div>

    

</div>
<div id="footer">
			<div>
				
				<span><font color = "#8A0808">&copy; 2014. <a href="HomePage.html"><font color = "#8A0808">CartWheel</a> all rights reserved</font></span> </div>
		</div>

</div>

</body>
</html>

















 