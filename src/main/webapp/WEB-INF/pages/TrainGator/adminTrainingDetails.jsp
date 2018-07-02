<!-- adminTrainingDetails page is only accessible by an administrator. -->
<!-- adminTrainingDetails is where the administrator can see the details of a training event. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic information about the page (eg. name of page) is reflected within the head tag. -->
<!-- start implementation for the head tag. -->
<head>
  <title>Training Details | TrainGator </title>
  <link rel="shortcut icon" href="/icon.png">
  <link rel="stylesheet" href="/vendor/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="/vendor/font-awesome/css/fontawesome-all.min.css">
  <link rel="stylesheet" href="/css/main.min.css">
  <link rel="stylesheet" href="/vendor/open-iconic/css/open-iconic-bootstrap.min.css">
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
            <a href="/admin/adminOngoing">
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
              <button class="btn btn-primary" style="height:55px" onclick="window.location = '/admin/adminOngoing'">
                <span class="oi oi-home ml-1"></span>
              </button>
<!-- end implementation for the search bar. -->
<!-- The user option consists of the log out button for the purpose of logging out the user in it's current session. -->
<!-- start implementation for the user option. -->
              <div class="dropdown">
                <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <span class="account-summary pr-lg-4 d-none d-lg-block">
                    <span class="account-name">${fname} ${lname}</span>
                    <span class="account-description">${usertype}</span>
                  </span>
                </button>
                <div class="dropdown-arrow dropdown-arrow-left"></div>
                <div class="dropdown-menu">
                  <h6 class="dropdown-header d-none d-md-block d-lg-none"> ${fname} ${fname} </h6>
                  <a class="dropdown-item" href="/logout">
                    <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
                </div>
              </div>
<!-- end implementation for the user option. -->
            </div>
          </div>
        </div>
      </header>
<!-- end implementation for the header. -->
      <main class="app-main">
        <div class="wrapper">
          <div class="page">
              <div class="page-inner">
               <header class="page-title-bar">
	            	<h1 class="page-title" style="text-align:center;">${trainingdetails.trainName}</h1>
	        	</header>
                  <div class="page-section">
                    <div class="row">
                      <div class="col-lg-12">
                        <section class="card">
                          <header class="card-header" style="text-align:center"> ${trainingdetails.trainName} </header>
                          <div class="row">
                          	<div class="col-lg-4">
                          		<div class="card-footer-content" style="text-align:center"><b>Duration of Training></b> </div>
                          		<p class="card-text" style="text-align:center">${trainingdetails.trainDatestart} to ${trainingdetails.trainDateend}
                          		</p>
                          	</div>
                          	<div class="col-lg-4">
                          	 	<div class="card-footer-content text-muted" style="text-align:center"><b>Schedule of Training</b></div>
                          		<p class="card-text" style="text-align:center"> ${trainingdetails.trainTimestart} to ${trainingdetails.trainTimeend} 
                          		</p>
                          	</div>
                          	<div class="col-lg-4">
                          		<div class="card-footer-content text-muted" style="text-align:center"><b>Training Facilitator </b></div>
                            	<c:forEach items="${facilitators}" var="faciVar">
                             		<p class="card-text" style="text-align:center"> ${faciVar[1]} ${faciVar[2]}</p>
                            	</c:forEach>
                          	</div>
                          </div>
                          <div class="card-footer-content text-muted" style="text-align:center;"><b>Training Course Objective and Outline</b> </div>
                          <p class="card-text" style="text-align:center;"> ${trainingdetails.trainCourseoutline} </p>
                          <br>	
                          <div class="form-actions" style="padding-left:45%">
	                    		<button class="btn btn-primary" type="submit" onclick="window.location.href='/admin/adminCreateEvent'">Edit Training</button>
	                  		</div><br>
                        </section>
                      </div>
                      
                      
                      	<div class="col-lg-6">
                           <div class="card card-fluid">
                            	<form action="http://localhost:8080/insertParticipant" method="post">
                                <input type="hidden" name="train_id" value="${trainId}">
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
                           </div>
                      	</div>                    


                      <div class="col-lg-6">
                        <div class="card card-fluid">
                          <div class="list-group list-group-flush list-group-bordered">
                            <div class="list-group-header"> Participants Who Requested to Join </div>
                            <label class="list-group-item custom-control custom-checkbox">
                              <input name="listcheckbox" type="checkbox" class="custom-control-input" unchecked>
                            </label>
                          </div>
                          <hr>
                          	<div style="padding-left:40%"><button  type="submit">Add Participant</button></div>
	                      <hr>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-6">
                          <div class="card card-fluid">
                        <div class="card-body">
                           <h2 class="section-title"> Training Participants </h2>
                           <table class="table">
                           	<thead>
                           		<tr>
                                    <th>  Participant Name </th>
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
              									</c:forEach>
                                        <tr>
                                          <td colspan="4"><button type="submit" id="deletebtn"  class="btn btn-primary btn-block">Delete</button></td>
                                        </tr>		   
                           		</form>	
                           	</tbody> 
                           </table>
                          </div>
                        </div>
                      </div>
                      
                      <div class="col-lg-6">
                          <div class="card card-fluid">
                        <div class="card-body">
                           <h2 class="section-title"> Training Facilitators </h2>
                           <table class="table">
                           	<thead>
                           		<tr>
                                    <th>  Facilitator Name </th>
                                    <th> Email </th>
                                    <th> Job Position </th>
                                    <th> Action </th>
                                    </tr>
                           	</thead>
                           	 <tbody>
                           		<form action="http://localhost:8080/admin/removeFacilitator?trainId=${trainId}" method="post">
	                            	<c:forEach items="${facilitators}" var="faciVar">
            										<label class="list-group-item custom-control custom-checkbox">
                  											<tr>
	                                   			<td>
	                                   				<span>${faciVar[1]} ${faciVar[2]}</span>
	                                   			</td>	
	                                   	 		<td>
	                                   	 			<span> ${faciVar[4]}</span>
	                                   	 		</td>
	                                   	 		<td>				                                                      
	                                   	 			<span> ${faciVar[5]}</span>	                                   	 		
	                                   	 		</td>
	                                   	 		<td class="align-middle text-right">				                                   
				                                     <label class="list-group-item custom-control custom-checkbox">
                                               <input name="facilitatorId" id="facilitatorId" type="checkbox" onclick="hide()" class="custom-control-input" value="${faciVar[0]}">
				                                       <input name="trainid" type="hidden" value="${trainId}">
				                                       <span class="custom-control-label"></span>
				                                      
				                                     </label>				                                  
				                                 </td>	
	                                   	 	</tr>
	                                   	 	
	                               		</label>
              									</c:forEach>
                                        <tr>
                                          <td colspan="4"><button type="submit" id="deletebtn"  class="btn btn-primary btn-block">Delete</button></td>
                                        </tr>		   
                           		</form>	
                           	</tbody> 
                           </table>
                          </div>
                        </div>
                      </div>
                    </div>
                    
                    </div>
                    <div class="form-actions" style="padding-left:42%">
                    	<button class="btn btn-primary" type="submit" onclick="window.location.href='/admin/adminUpcoming'">Back to Upcoming Trainings List</button>
                  	</div>
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
