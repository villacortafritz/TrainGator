<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from uselooper.com/auth-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 30 Apr 2018 08:09:36 GMT -->
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- End Required meta tags -->
    <!-- Begin SEO tag -->
    <title> Sign Up | TrainGator </title>
    <script type="application/ld+json">
      {
        "name": "Looper - Bootstrap 4 Admin Theme",
        "description": "Responsive admin theme build on top of Bootstrap 4",
        "author":
        {
          "@type": "Person",
          "name": "Beni Arisandi"
        },
        "@type": "WebSite",
        "url": "",
        "headline": "Sign Up",
        "@context": "http://schema.org"
      }
    </script>
    <!-- End SEO tag -->
    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/apple-touch-icon.png">
    <link rel="shortcut icon" href="/icon.png">
    <meta name="theme-color" content="#3063A0">
    <!-- BEGIN BASE STYLES -->
    <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <!-- END BASE STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" href="/css/main.min.css">
    <link rel="stylesheet" href="/css/custom.css">
    <!-- END THEME STYLES -->
  </head>
  <body>
    <!-- .auth -->
    <main class="auth">
      <header id="auth-header" class="auth-header" style="background-image: url(/images/illustration/img-1.png);">
        <h1>
          <img src="/images/rect-logo.png" alt="" height="120">
          <span class="sr-only">Sign Up</span>
        </h1>
        <p> Already have an account? please
          <a href="signin.html">Sign In</a>
        </p>
      </header>
      <!-- form -->
      <form class="auth-form" action="http://localhost:8080/signup" method="post">
        <div class="form-row">
          <!-- form grid -->
          <div class="col-md-6 mb-3">
             <div class="form-group">
	          <div class="form-label-group">
	            <input type="text" id="inputFirstname" class="form-control"  name="fname" placeholder="First Name" required="">
	            <label for="inputFirstname">First name</label>
	          </div>
	        </div>
            <div class="valid-tooltip"> Looks good! </div>
          </div>
          <!-- /form grid -->
          <!-- form grid -->
          <div class="col-md-6 mb-3">
            <div class="form-group">
	          <div class="form-label-group">
	            <input type="text" id="inputLastname" class="form-control" name="lname" placeholder="Last Name" required="">
	            <label for="inputLastname">Last name</label>
	          </div>
	        </div>
            <div class="valid-tooltip"> Looks good! </div>
          </div>
          <!-- /form grid -->
        </div>
        <!-- /.form-group -->
        <!-- .form-group -->
        <div class="form-group">
          <div class="form-label-group">
            <input type="email" id="inputEmail" class="form-control" name="email" placeholder="email" required="">
            <label for="inputEmail">Email</label>
          </div>
        </div>
        <div class="form-group">
          <div class="form-label-group">
            <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required="">
            <label for="inputPassword">Password</label>
          </div>
        </div>
        <div class="form-group">
          <label for="exampleSelect1">Position in the company</label>
          <select id="exampleSelect1" class="custom-select" name="role">
            <option selected> Select role </option>
            <option value="Regular Employee"> Regular Employee </option>
            <option value="Supervisor/Manager"> Supervisor/Manager </option>
            <option value="Senior Employee"> Senior Employee </option>
          </select>
        </div>

        <br/>
        <!-- /.form-group -->
        <!-- .form-group -->
        <div class="form-group">
          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>
        </div>
		</form>
    </main>
    <!-- /.auth -->
    <!-- BEGIN PLUGINS JS -->
    <script src="/vendor/particles.js/particles.min.js"></script>
    <script>
      /* particlesJS.load(@dom-id, @path-json, @callback (optional)); */
      particlesJS.load('auth-header', '/js/particles.json');
    </script>
    <!-- END PLUGINS JS -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-116692175-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag()
      {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      gtag('config', 'UA-116692175-1');
    </script>
  </body>

<!-- Mirrored from uselooper.com/auth-signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 30 Apr 2018 08:09:36 GMT -->
</html>
    