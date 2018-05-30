<!-- adminCreateEvent page is only accessible by an administrator. -->
<!-- adminCreateEvent is where the administrator can create a training event. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic information about the page (eg. name of page) is reflected within the head tag. -->
<!-- start implementation for the head tag. -->
<head>
  <title> Create Training | TrainGator </title>
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/flatpickr/flatpickr.min.css">
  <link rel="stylesheet" href="/vendor/select2/css/select2.min.css">
</head>
<!-- end implementation for the head tag. -->
 <body>
   <div class="app has-fullwidth">
<!-- There are 4 components within the header tag: TrainGator logo, user search bar, home button, user options. -->
<!-- start implementation for the header. -->
    <header class="app-header">
        <div class="top-bar">
<!-- The TrainGator logo is seen at the left-most side of the header, it is used for redirecting the user to it's default landing page. -->
<!-- start implementation for the TrainGator logo. -->
          <div class="top-bar-brand">
            <a href="adminOngoing.html">
              <img src="/images/rect-logo.png" height="45" alt="">
            </a>
          </div>
<!-- end implementation for the TrainGator logo. -->
          <div class="top-bar-list">
            <div class="top-bar-item top-bar-item-full">
              <div class="top-bar-search">
                <div class="input-group input-group-search">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <span class="oi oi-magnifying-glass"></span>
                    </span>
<!-- The search bar at the header has the purpose of searching the users within the database. -->
<!-- start implentation for the search bar. -->
                  </div>
                  <input type="text" class="form-control" aria-label="Search" placeholder="Search for a specific person">
                 </div>
<!-- end implementation for the search bar. -->
              </div>
            </div>
<!-- The home button is located at the header since it has the purpose of redirecting the user back to it's default landing page. -->
<!-- start implementation for the search bar. -->
            <div class="top-bar-item top-bar-item-right px-0 d-none d-sm-flex">
              <button class="btn btn-primary" style="height:55px" onclick="window.location = 'adminOngoing'">
                <span class="oi oi-home ml-1"></span>
              </button>
<!-- end implementation for the search bar. -->
<!-- The user option consists of the log out button for the purpose of logging out the user in it's current session. -->
<!-- start implementation for the user option. -->
<<<<<<< HEAD
         <div class="dropdown">
           <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <span class="account-summary pr-lg-4 d-none d-lg-block">
               <span class="account-name">Name of Admin</span>
               <span class="account-description">Administrator</span>
             </span>
           </button>
           <div class="dropdown-arrow dropdown-arrow-left"></div>
           <div class="dropdown-menu">
             <h6 class="dropdown-header d-none d-md-block d-lg-none"> Name of Admin </h6>
             <a class="dropdown-item" href="generalSignin.html">
               <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
               <div class="dropdown-divider"></div>
          </div>
        </header>
<!-- end implementation for the user option. -->
=======
              <div class="dropdown">
                <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="user-avatar">
                    <img src="/images/avatars/profile.jpg" alt="">
                  </span>
                  <span class="account-summary pr-lg-4 d-none d-lg-block">
                    <span class="account-name">Name of Admin</span>
                    <span class="account-description">Administrator</span>
                  </span>
                </button>
                <div class="dropdown-arrow dropdown-arrow-left"></div>
                <div class="dropdown-menu">
                  <h6 class="dropdown-header d-none d-md-block d-lg-none"> Name of Admin </h6>
                  <a class="dropdown-item" href="generalSignin.html">
                    <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
                    <div class="dropdown-divider"></div>
          <!-- end implementation for the user option. -->
            </div>
          </div>
        </div>
      </header>
>>>>>>> eefe32709fcb63cef3032eff6b208104a3046a00
<!-- end implementation for the header. -->
      <main class="app-main">
        <div class="wrapper">
          <div class="page">
            <div class="page-inner">
              <header class="page-title-bar">
                <h1 class="page-title" style="padding-left:35%"> Create Training Event </h1>
              </header>
              <div class="page-section">
                <form method="post" action="http://localhost:8080/adminCreateEvent">
                  <input type="hidden" name="trainId" value="${train.trainId}">
                <div class="section-deck">
                  <section class="card card-fluid">
                    <div class="card-body">
                        <div class="form-group">
                          <label class="control-label">Training Name</label>
                          <input type="text" class="form-control" name="train_name" required="" value="${train.trainName}"> 
                        </div>
                        <div class="form-group">
                          <label class="control-label">Training Category</label>
                          <select name="train_cat" class="form-control" required>
                            <option>------------</option>
                            <c:forEach items="${list}" var="listVar">
                              <c:choose>
                                <c:when test="${listVar.subDesc==train.trainCat}">
                                  <option value="${listVar.subDesc}" selected="">${listVar.subDesc}</option>
                                </c:when>
                                <c:otherwise>
                                  <option value="${listVar.subDesc}">${listVar.subDesc}</option>
                                </c:otherwise>
                              </c:choose>
                            </c:forEach>
                          </select>
                        </div>
                        <fieldset class="text-center"><legend>START</legend>
                          <div class="row">
                            <div class="form-group col-md-6">
                              <label class="text-center" >Date</label>
                              <input id="flatpickr01" type="text" class="form-control"  value="${train.trainDatestart}" name="train_datestart" required=""> 
                            </div>
                            <div class="form-group col-md-6">
                            <label class="text-center" >Time</label>
                            <input id="flatpickr08" type="text" class="form-control" value="${train.trainTimestart}" name="train_timestart" required=""> 
                          </div>
                          </div>
                        </fieldset>
                        <fieldset class="text-center"><legend>END</legend>
                        <div class="row">
                          <div class="form-group col-md-6">
                            <label class="text-center" >Date</label>
                            <input id="flatpickr01" type="text" class="form-control" value="${train.trainDateend}" name="train_dateend" required=""> 
                          </div>
                          
                          <div class="form-group col-md-6">
                            <label class="text-center" >Time</label>
                            <input id="flatpickr08" type="text" class="form-control" value="${train.trainDateend}" name="train_timeend" required=""> 
                          </div>
                        </div>
                        </fieldset>
                        <div class="form-group">
                          <label for="exampleTextarea">Course Objective and Course Outline for Training Event</label>
                          <textarea class="form-control" id="exampleTextarea" rows="3" name="train_courseoutline" required="">${train.trainCourseoutline}</textarea>
                        </div>
                    </div>
                  </section>
                </div>
                <div class="form-actions" style="padding-left:40%">
                  <button class="btn btn-primary" type="submit" style="width:200px">Next</button>
                </div>
               </form>
              </div>
<<<<<<< HEAD
            </div>
          </div>
        </div>
   </div>
=======
         </div>
    </div>
  </div>
  </main>
>>>>>>> eefe32709fcb63cef3032eff6b208104a3046a00
   <script src="/vendor/jquery/jquery.min.js"></script>
   <script src="/vendor/bootstrap/js/popper.min.js"></script>
   <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
   <script src="/js/main.min.js"></script>
   <script src="/vendor/select2/js/select2.min.js"></script>
   <script src="/vendor/flatpickr/flatpickr.min.js"></script>
   <script src="/js/pages/select2-demo.js"></script>
   <script src="/js/pages/select2Facilitator-demo.js"></script>
   <script src="/js/pages/select2Supervisor-demo.js"></script>
   <script src="/js/pages/flatpickr-demo.js"></script>
 </body>
</html>
