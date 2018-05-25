<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Training Details | TrainGator </title>
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
</head>
<body>
  <div class="app has-fullwidth">
    <header class="app-header">
        <div class="top-bar">
          <div class="top-bar-brand">
            <a href="adminOngoing.html">
              <img src="/images/rect-logo.png" height="45" alt="">
            </a>
          </div>
          <div class="top-bar-list">
            <div class="top-bar-item top-bar-item-full">
              <div class="top-bar-search">
                <div class="input-group input-group-search">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <span class="oi oi-magnifying-glass"></span>
                    </span>
                  </div>
                  <input type="text" class="form-control" aria-label="Search" placeholder="Search for a specific person"> </div>
              </div>
            </div>
            <div class="top-bar-item top-bar-item-right px-0 d-none d-sm-flex">
              <ul class="header-nav nav">
                <li class="nav-item dropdown header-nav-dropdown has-notified">
                  <a class="nav-link" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="oi oi-pulse"></span>
                  </a>
                  <div class="dropdown-arrow"></div>
                  <div class="dropdown-menu dropdown-menu-rich dropdown-menu-right">
                    <h6 class="dropdown-header stop-propagation">
                      <span>Activities
                        <span class="badge">(1)</span>
                      </span>
                    </h6>
                    <div class="dropdown-scroll has-scrollable">
                      <a href="#" class="dropdown-item unread">
                        <div class="user-avatar"><img src="/images/avatars/uifaces15.jpg" alt=""></div>
                        <div class="dropdown-item-body"><p class="text"> Jeffrey Wells created a schedule </p></div>
                      </a>
                  </div>
                </li>
              </ul>
              <button class="btn btn-primary" style="height:55px" onclick="window.location = 'adminOngoing.html'">
                <span class="oi oi-home ml-1"></span>
              </button>
              <div class="dropdown">
                <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="user-avatar">
                    <img src="/images/avatars/profile.jpg" alt="">
                  </span>
                  <span class="account-summary pr-lg-4 d-none d-lg-block">
                    <!-- <span class="account-name">${fname} ${lname}</span> -->
                    <!-- <span class="account-description">${usertype}</span> -->
                  </span>
                </button>
                <div class="dropdown-arrow dropdown-arrow-left"></div>
                <div class="dropdown-menu">
                  <!-- <h6 class="dropdown-header d-none d-md-block d-lg-none">${fname} ${lname}</h6> -->
                  <a class="dropdown-item" href="generalSignin.html">
                    <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
                    <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="#">Help Center</a>
                  <a class="dropdown-item" href="#">Ask Forum</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
      <main class="app-main">
        <div class="wrapper">
          <div class="page">
                <div class="page-inner">
                  <div class="page-section">
                    <div class="row">
                      <div class="col-lg-12">
                        <section class="card">
                          <header class="card-header" style="text-align:center"> ${trainingdetails.trainName} </header>
                          <div class="card-footer-content text-muted">Duration of Training </div>
                          <p class="card-text" style="text-align:center">${trainingdetails.trainDatestart} - ${trainingdetails.trainDateend}
                          </p>
                          <div class="card-footer-content text-muted">Schedule of Training </div>
                          <p class="card-text" style="text-align:center"> ${trainingdetails.trainTimestart} - ${trainingdetails.trainTimeend} 
                          </p>
                            <div class="card-footer-content text-muted">Training Facilitator </div>
                            <c:forEach items="${facilitators}" var="faciVar">
                              <p class="card-text" style="text-align:center"> ${faciVar[1]} ${faciVar[2]}</p>
                            </c:forEach>
                          <div class="card-footer-content text-muted">Training Course Objective and Outline </div>
                          <p class="card-text" style="text-align:center"> ${trainingdetails.trainCourseoutline} </p>
                          <br>
                        </section>
                      </div>

                      	<div class="col-lg-6">
                           <!-- .card -->
                           <div class="card card-fluid">
                             <!-- .list-group -->
                            	<form action="http://localhost:8080/insertParticipant" method="post">
	                               <div class="list-group list-group-flush list-group-bordered">
	                                 <div class="list-group-header"> Recommended Participants </div>
	                                 	<c:forEach items="${recommendedList}" var="recVar">
											<label class="list-group-item custom-control custom-checkbox">                               
	                                       		<input name="userRecommended" type="checkbox" class="custom-control-input" value="${recVar.userId}" >
	                                       		<span class="custom-control-label">${recVar.userFname} ${recVar.userLname}</span>
	                                   		</label>
										</c:forEach>	
	                              	</div><hr>
	                              	<div style="padding-left:40%"><button  type="submit">Add Participant</button></div>
	                              	<hr>
								</form>
                             <!-- /.list-group -->
                           </div>
                           <!-- /.card -->
                      	</div>                    


                      <div class="col-lg-6">
                        <div class="card card-fluid">
                          <div class="list-group list-group-flush list-group-bordered">
                            <div class="list-group-header"> Participants Who Requested to Join </div>
                            <label class="list-group-item custom-control custom-checkbox">
                              <input name="listcheckbox" type="checkbox" class="custom-control-input" unchecked>
                              <span class="custom-control-label">Bunny Barros</span>
                            </label>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-12">
                          <div class="card card-fluid">
                        <div class="card-body">
                           <h2 class="section-title"> Training Participants </h2>
                           <table class="table">
                           	<thead>
                           		<tr>
                                    <th style="min-width:200px">  Participant Name </th>
                                    <th> Email </th>
                                    <th> Job Position </th>
                                    <th> Action </th>
                                    </tr>
                           	</thead>
                           	 <tbody>
                           		<form action="http://localhost:8080/removeParticipant?trainId=${trainId}" method="post">
	                            	<c:forEach items="${participants}" var="partVar">
            										<label class="list-group-item custom-control custom-checkbox">
                  											<tr>
	                                   			<td>
	                                   				<span>${partVar[1]} ${partVar[2]}</span>
	                                   			</td>	
	                                   	 		<td>
	                                   	 			<span> ${partVar[4]}</span>
	                                   	 		</td>
	                                   	 		<td>				                                                      
	                                   	 			<span> ${partVar[5]}</span>	                                   	 		
	                                   	 		</td>
	                                   	 		<td class="align-middle text-right">				                                   
				                                     <label class="list-group-item custom-control custom-checkbox">
                                               <input name="partipantId" id="partipantId" type="checkbox" onclick="hide()" class="custom-control-input" value="${partVar[0]}">
				                                       <input name="trainid" type="hidden" value="${trainId}">
				                                       <span class="custom-control-label"></span>
				                                      
				                                     </label>				                                  
				                                 </td>	
	                                   	 	</tr>
	                                   	 	
	                               		</label>
<<<<<<< HEAD
              									</c:forEach>
                                        <tr>
                                          <td colspan="4"><button type="submit" id="deletebtn"  class="btn btn-primary btn-block">Delete</button></td>
                                        </tr>		                     
=======
									</c:forEach>		                     
	                           		<tr> <button type="submit">Delete</button></tr>
>>>>>>> 82e06b0a282a88a1b47661708d81d3683c4dc45e
                           		</form>	
                           	</tbody> 
                           	
                           </table>
                          </div>
                          
                        </div>
                      </div>
                      
                    </div>
                    </div>
                  </div>
                  <div class="form-actions" style="padding-left:42%">
                    <button class="btn btn-primary" type="submit" onclick="window.location.href='adminUpcoming'">Back to Upcoming Trainings List</button>
                  </div>
                </div>
            </div>
          </div>
        </main>
      </div>
      <script type="text/javascript">
        // function hide() {
        //   for (var i = 0; i < document.getElementsByName("partipantId").length; i++) {
        //     console.log(document.getElementsByName("partipantId")[i].checked);
        //     if (document.getElementsByName("partipantId")[i].checked) {
        //       document.getElementById("deletebtn").style.display = 'block';
        //     }else{
        //         document.getElementById("deletebtn").style.display = 'none';
        //     }
        //   }
        // }
        
      </script>
      <script src="/vendor/jquery/jquery.min.js"></script>
      <script src="/vendor/bootstrap/js/popper.min.js"></script>
      <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
      <script src="/vendor/stacked-menu/stacked-menu.min.js"></script>
      <script src="/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
      <script src="/js/main.min.js"></script>
      </script>
    </body>
    </html>
