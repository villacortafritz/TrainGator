<!DOCTYPE html>
<html lang="en">
  <head>
    <title> Sign In | TrainGator </title>
    <link rel="shortcut icon" href="/icon.png">
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
        <p> Don't have an account?
          <a href="generalSignup.html">Create One</a>
        </p>
      </header>
      <form class="auth-form">
        <div class="form-group">
          <div class="form-label-group">
            <input type="text" id="inputUser" class="form-control" placeholder="Username" required="" autofocus="">
            <label for="inputUser">Email</label>
          </div>
        </div>
        <div class="form-group">
          <div class="form-label-group">
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
            <label for="inputPassword">Password</label>
          </div>
        </div>
        <div class="form-group">
          <button class="btn btn-lg btn-primary btn-block" type="submit" formaction="userJoined.html">Sign In</button>
        </div>
        <div class="text-center pt-3">
          <a href="generalRecoverPassword.html" class="link">Forgot Password?</a>
        </div>
      </form>
    </main>
  </body>
</html>
