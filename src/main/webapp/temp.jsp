<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Apple-like Login Form | Tutorialzine Demo</title>
        
        <!-- Our CSS stylesheet file -->
      <link href="css/style1.css" rel="stylesheet" type="text/css">
        
        <!--[if lt IE 9]>
          <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    
    <body>

		<div id="formContainer">
			<form id="login" method="post" action="./">
				<a href="#" id="flipToRecover" class="flipLink">Forgot?</a>
				<input type="text" name="loginEmail" id="loginEmail" value="Email" />
				<input type="password" name="loginPass" id="loginPass" value="pass" />
				<input type="submit" name="submit" value="Login" />
			</form>
			<form id="recover" method="post" action="./">
				<a href="#" id="flipToLogin" class="flipLink">Forgot?</a>
				<input type="text" name="recoverEmail" id="recoverEmail" value="Email" />
				<input type="submit" name="submit" value="Recover" />
			</form>
		</div>

        <footer>
	        <h2><i>Tutorial:</i> Apple-like Login Form With CSS 3D Transforms</h2>
            <a class="tzine" href="http://tutorialzine.com/2012/02/apple-like-login-form/">Head on to <i>Tutorial<b>zine</b></i> to download this example</a>
        </footer>
        
        <!-- JavaScript includes -->
		<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
		<script src="assets/js/script.js"></script>

    </body>
</html>

