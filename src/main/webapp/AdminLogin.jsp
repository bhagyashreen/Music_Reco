
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Login</title>

<link href="css/style.css" rel="stylesheet" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/bootstrap.min.css" rel="stylesheet" media="screen"
	type="text/css">
<link href="bootstrap/bootstrap.css" rel="stylesheet" media="screen"
	type="text/css">
<link href="bootstrap/bootstrap-responsive.css" rel="stylesheet"
	media="screen" type="text/css">
<link href="bootstrap/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen" type="text/css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript" src="jsbootstrap/bootstrap.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap.min.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-dropdown.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-alert.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-button.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-carousel.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-scrollspy.js" /></script>
<script type="text/javascript" src="jsbootstrap/bootstrap-modal.js" /></script>


<script type="text/javascript">





function userLogin(){
	// alert('inside Login page');
	   var username = $('#username').val();
	   var password = $('#password').val();
	 
	// alert('Username : '+email);
	   
		$.ajax({
			url : "rest/file/login",
		    type: "POST",
		    data : "username=" + username + "&password=" + password,
		    	success:function(data, textStatus, jqXHR){
			    	var uri = "rest/file/refresh";
			    	$.ajax({
			    		url : uri,
			    	    type: "GET",
			    	    datatype : "json",	     
			    	    success:function(data, textStatus, jqXHR){
			    		window.location.href="AdminPage.jsp";
			    	    }
			    	});
			    	    
			    },
		    error: function(jqXHR, textStatus, errorThrown){
		    	alert('Could not process request.. ' + errorThrown);
		    	window.location.href="login.jsp";
		    }
		});
}
function EmailVerify() {
    var username = document.getElementById('username').value;
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var message = document.getElementById('emailMessage');
    var badColor = "red";
    message.style.color = badColor;

    if (!filter.test(username)) {   
       $('#emailMessage').html("Please Enter valid Email");
       return false;
    }else{
       $('#emailMessage').html("");
       $.get('/check_email?username=' + username, function(data){
            if(data == "true")
                $('#emailMessage').html("Email already exists");
       });
    }
    return true;
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
						<a href="about.html"><font color = "#8A0808"FONT FACE="algerian">About</font></a>
					</li>
					<li class="middle">
						<a href="signup.jsp"><font color = "#8A0808"FONT FACE="algerian">Signup</font></a>
					</li>
					
				</ul>
			</div>
		</div>
		

	<div id="container" style="padding-top: 40px; padding-left: 350px;" align="center">
		<div class="container-fluid">
			<div id="loginOptions" style="margin: 40px 0px 0px 50px;">
				<div></div>
				<div class="span5" style="margin-right: -10px;">
					<div
						style="background-color: ghostwhite; -webkit-box-shadow: 3px 0px 5px #888888; -moz-box-shadow: 3px 0px 5px #888888; box-shadow: 3px 0px 5px #888888; padding: 30px;"align="center">
						<h3>Sign In</h3>
						<table>
							<tr>
								<td><label for="inputEmail3" class="col-sm-2 control-label">username</label></td>
								<td><div class="col-sm-10">
										<input type="email" class="form-control" id="username"
											placeholder="Your registered email"  onChange="EmailVerify();">
									</div></td>
							</tr>
							<tr>
								<td><label for="inputPassword3" class="col-sm-2 control-label">Password</label></td>
								<td><div class="col-sm-10"> <input type="password" class="form-control" id="password"
											placeholder="Password"">
									</div></td>
							</tr>
							<tr>
								<td></td>
								<td><div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="btn btn-primary" style= "margin-left:45px" id="login"  onclick="userLogin()">Login</button>
									</div></td>
							</tr>
						</table>
					</div>
				</div>

				<div ></div>
				<div class="span1" style="margin-top: 60px;">
					
				</div>
				

				<div class="span5" style="height:240px">
					
				</div>
			</div>
		</div>

	
	</div>

<div id="cnt" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Modal header</h3>
  </div>
  <div class="modal-body">
    <p>One fine body…</p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
    <button class="btn btn-primary">Save changes</button>
  </div>
</div>


<div id="footer">
			<div>
				
				<span><font color = "#8A0808">&copy; 2014. <a href="HomePage.html"><font color = "#8A0808">CartWheel</a> all rights reserved</font></span> </div>
		</div>
	</div>

</body>
</html>



