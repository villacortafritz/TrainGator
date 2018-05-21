<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Sign In | TrainGator </title>

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/apple-touch-icon.png">
    <link rel="shortcut icon" href="/icon.png">
    <meta name="theme-color" content="#3063A0">
    <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/css/main.min.css">
    <link rel="stylesheet" href="/css/custom.css">
  </head>
  <body>
    <main class="auth">
      <header id="auth-header" class="auth-header" style="background-image: url(/images/illustration/img-1.png);">
        <h1>
          <img src="/images/rect-logo.png" alt="" height="120">
          <span class="sr-only">Sign In</span>
        </h1>
        <p> Don't have a account?
          <a href="http://localhost:8080/signup">Sign Up</a>
        </p>
      </header>
      <form class="auth-form" action="http://localhost:8080/signin" method="post">
        <label style="text-decoration-color: red;" >${error}</label>
        <div class="form-group">
          <div class="form-label-group">
            <input type="email" id="inputUser" class="form-control" name="email" placeholder="Email" required="" autofocus="">
            <label for="inputUser">Email</label>
          </div>
        </div>
        <div class="form-group">
          <div class="form-label-group">
            <input type="password" id="inputPassword" class="form-control" name="password"placeholder="Password" required="">
            <label for="inputPassword">Password</label>
          </div>
        </div>
        <div class="form-group">
          <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
        </div>
        <div class="form-group text-center">
          <div class="custom-control custom-control-inline custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="remember-me">
            <label class="custom-control-label" for="remember-me">Keep me sign in</label>
          </div>
        </div>
        <div class="text-center pt-3">
          <a href="recoverUsername.html" class="link">Forgot Username?</a>
          <span class="mx-2">·</span>
          <a href="recoverPassword.html" class="link">Forgot Password?</a>
        </div>
      </form>

    </main>
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

<!-- Mirrored from uselooper.com/auth-signin-v1.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 30 Apr 2018 08:08:06 GMT -->
</html>
