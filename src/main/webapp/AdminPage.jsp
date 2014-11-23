<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>

<head>
<title>cartwheel</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	
<link href="bootstrap/bootstrap.min.css" rel="stylesheet" media="screen"
	type="text/css">
<link href="bootstrap/bootstrap.css" rel="stylesheet" media="screen"
	type="text/css">
<link href="bootstrap/bootstrap-responsive.css" rel="stylesheet"
	media="screen" type="text/css">
<link href="bootstrap/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen" type="text/css">
<script type="text/javascript" src="jsbootstrap/bootstrap.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap.min.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-dropdown.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-alert.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-button.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-carousel.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-scrollspy.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-modal.js" /></script>
<script type="text/javascript">

function addProduct(){


		var pid = $('#productid').val();
	   var pname = $('#productname').val();
	   var cid = $('#catalogid').val();
	   var cname = $('#catalogname').val();
	   var description = $('#description').val();
	   var price = $('#price').val();
	   var quantity = $('#quantity').val();
	
	 
		$.ajax({
			url : "rest/file/addproduct",
		    type: "POST",
		    data : "pid=" + pid + "&pname=" + pname +"&cid=" + cid + "&cname=" + cname + "&description=" + description + "&price=" + price + "&quantity=" + quantity,
		   
		    success:function(data, textStatus, jqXHR){
		    	alert('success product added');
		    	window.location.href="userPage.jsp";
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
				<a href="HomePage.html" class="logo"><img
					src="images/cloudmall.png" alt="Cloud Mall"></a>
				<ul class="navigation">

					<li><a href="HomePage.jsp"><font color="#8A0808" FONT
							FACE="Helvetica">Logout </font></a></li>

				</ul>
			</div>
		</div>
		<div id="body">


			<div id="container" style="padding-top: 10px; padding-left: 350px;">
				<div class="container-fluid">
					<div class="row-fluid">
						<div id="sidebar" class="span2">
							<!--Sidebar content-->
							<ul id="sidebar-list" class="nav nav-list">
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane active" id="NewUserSignUp">
								<table cellpadding="5px">
									<!--Body content-->
									<tr>
										<h2>Add Product</h2>
									</tr>
																		<tr>
										<td><h5>Product ID</h5></td>
										<td></td>
										<td><div class="input-group">
												<input type="text" id="productid" class="required"
													placeholder="Product ID">
											</div></td>
									</tr>
									<tr>
										<td><h5>Product Name</h5></td>
										<td></td>
										<td><div class="input-group">
												<input type="text" id="productname" class="required"
													placeholder="Product Name">
											</div></td>
									</tr>
									<tr></tr>
																		<tr>
										<td><h5>Catalog ID</h5></td>
										<td></td>
										<td><div class="input-group">
												<input type="text" id="catalogid" class="required"
													placeholder="Catalog ID">
											</div></td>
									</tr>
									<tr>
										<td><h5>Catalog Name</h5></td>
										<td></td>
										<td><div class="input-group">
												<input type="text" id="catalogname" class="required"
													placeholder="Catalog Name">
											</div></td>
									</tr>
									<tr></tr>
									<tr>
										<td><h5>Description</h5></td>
										<td></td>
										<td><div class="input-group">
												<input type="text" id="description" class="required"
													placeholder="Description">
											</div></td>
									</tr>
									<tr></tr>
									<tr>
										<td><h5>Price</h5></td>
										<td></td>
										<td><div class="input-group">
												<input type="text" id="price" name="Price"
													class="required" placeholder="Price">
											</div></td>
									</tr>
									<tr></tr>
									<tr>
										<td><h5>Quantity</h5></td>
										<td></td>
										<td><div class="input-group">
												<input type="text" id="quantity"
													name="Quantity" class="required"
													placeholder="Quantity"
													>
											</div></td>
		
									<tr>
										<td></td>
										<td></td>
										<td>
											<div class="col-sm-offset-2 col-sm-10">
												<button id="addproduct" class="btn btn-primary" type="button"
													onclick="addProduct();">Add Product</button>
												<!--  		
									<input type="submit" class="btn btn-default" id="signup" value="Sign Up"/>
							-->
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
</div>
			<div id="footer">
				<div>

					<span><font color="#8A0808">&copy; Cloud Services
							2014. <a href="HomePage.html"><font color="#8A0808">Cloud
									Mall</a> all rights reserved
					</font></span>
				</div>
			</div>
	</div>
</body>
</html>