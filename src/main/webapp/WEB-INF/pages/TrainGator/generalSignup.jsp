<!DOCTYPE html>
<html lang="en">
  <head>
    <title> Sign Up | TrainGator </title>
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
        </h1>

        <p> Already have an account? please
          <a href="signin.html">Sign In</a>
        </p>
      </header>
      <form class="auth-form">
        <div class="form-group">
          <div class="form-label-group">
            <input type="email" id="inputEmail" class="form-control" placeholder="Email" required="" autofocus="">
            <label for="inputEmail">Email</label>
          </div>
        </div>
        <div class="form-row">
          <div class="col-md-6 mb-3">
            <label for="validationTooltip01">First name</label>
            <input type="text" class="form-control" id="validationTooltip01" placeholder="First name" value="" required="">
            <div class="valid-tooltip"> Looks good! </div>
          </div>
          <div class="col-md-6 mb-3">
            <label for="validationTooltip02">Last name</label>
            <input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" value="" required="">
            <div class="valid-tooltip"> Looks good! </div>
          </div>
        </div>
        <div class="form-group">
          <div class="form-label-group">
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
            <label for="inputPassword">Password</label>
          </div>
        </div>
        <div class="form-group">
          <label for="exampleSelect1">Position in the company</label>
          <select id="exampleSelect1" class="custom-select">
            <option selected> Select role </option>
            <option value="1"> Regular Employee </option>
            <option value="2"> Supervisor/Manager </option>
            <option value="3"> Senior Employee </option>
          </select>
        </div>
        <div class="form-group">
          <button class="btn btn-lg btn-primary btn-block" type="submit" formaction="generalSignin.html">Sign Up</button>
        </div>
    </main>
  </body>
</html>
