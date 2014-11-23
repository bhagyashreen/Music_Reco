<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<<html>
<head>
	<title>CartWheel</title>
	<meta  charset="utf-8">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	
<script type="text/javascript">





function Refresh(){
	var uri = "rest/file/refresh";
	alert('inside user page');
	$.ajax({
		url : uri,
	    type: "GET",
	    datatype : "json",	     
	    success:function(data, textStatus, jqXHR){
		window.location.href="userPage.jsp";
	},
	error: function(jqXHR, textStatus, errorThrown){
		alert('Could not process request.. ' + errorThrown);
	}
	});
	}

function logout(){
	
	//alert("i am inside logut");

	$.ajax({
		url : "rest/file/logout",
	    type: "GET",
	    datatype : "text",
	   
	    success:function(data, textStatus, jqXHR){
	    	alert('successfully logout');
	    	window.location.href="HomePage.html";
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
						<a href="HomePage.html"><font color = "#8A0808" FONT FACE="algerian" onclick ="logout();" >Logout</font></a>
					</li>
					<li >
						<a href="profile.jsp"><font color = "#8A0808"FONT FACE="algerian">Profile</font></a>
					</li>
					<li class="middle">
						<a href="Cart.jsp"><font color = "#8A0808"FONT FACE="algerian">My Cart</font></a>
					</li>
				</ul>
			</div>
		</div>
		<div id="body">
			
			
	<div class="container-fluid">
		<div class="row-fluid">
			
			<div class="span9">
				<div class="well well-large">
		

					<div class="row">

			


					</div>
					<div></div>
				</div>

				<table id="example" class="table table-hover">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Catalog Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Purchase Date</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${history}">
						<tr>
							<td>${item.getProductname()}</td>							
							<td>${item.getCatalogname()}</td>
							<td>${item.getPrice()}</td>
							<td>${item.getQuantity()}</td>
							<td>2014-10-12 14:51:14</td>
					
						</tr>
						</c:forEach>
					</tbody>
					 
				</table>
				
			</div>
			<!--/span-->
		</div>
		<!--/row-->

			
	</div>
	<!-- Modal for upload-->






			
			
			
			
		</div>
		<div id="footer">
			<div>
				
				<span><font color = "#8A0808">&copy; 2014. <a href="HomePage.html"><font color = "#8A0808">CartWheel</a> all rights reserved</font></span> </div>
		</div>
	</div>
</body>
</html>





















 