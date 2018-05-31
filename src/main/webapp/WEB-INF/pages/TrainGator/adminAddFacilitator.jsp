<!-- adminAddFacilitator page is only accessible by an administrator. -->
<!-- adminAddFacilitator is a step in creating an event wherein the administrator will set a facilitator for the created event. -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic information about the page (eg. name of page) is reflected within the head tag. -->
<!-- start implementation for the head tag. -->
<head>
  <title>Admin Add Facilitator | TrainGator </title>
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
              <button class="btn btn-primary" style="height:55px" onclick="window.location = '/admin/adminOngoing'">
                <span class="oi oi-home ml-1"></span>
              </button>
<!-- end implementation for the search bar. -->
<!-- The user option consists of the log out button for the purpose of logging out the user in it's current session. -->
<!-- start implementation for the user option. -->
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
                  <a class="dropdown-item" href="/logout">
                    <span class="dropdown-icon oi oi-account-logout"></span> Logout</a>
                    <div class="dropdown-divider"></div>
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
                  <div class="page-section">
                    <div class="form-group">
                    </div>
                    <form method="post" action="http://localhost:8080/admin/adminAddFacilitator">
                    <input type="hidden" name="train_id" value="${trainID}">
                    <div class="row">
                      <div class="col-lg-6">
                        <div class="input-group input-group-alt">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <span class="oi oi-magnifying-glass"></span>
                          </span>
                        </div>
                        <input type="text" class="form-control" placeholder="Type name of person to be assigned as Facilitator..." id="faci" onkeyup="faci()">
                        </div>
                          <div class="card card-fluid">
                        <div class="card-body">
                            <h2 class="section-title"> Assign a Facilitator </h2>
                          <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <th>
                                  <!-- <th style="width:62px"> -->
                                  </th>
                                  <th> Name </th>
                                  <!-- <th style="min-width:280px"> Name </th> -->
                                  <th> Company Position </th>
                                  <th> Email </th>
                                  <th> Check </th>
                                  <!-- <th style="width: 50px;"> &nbsp; </th> -->
                                </tr>
                              </thead>
                              <tbody id="list">
                                <c:forEach items="${users}" var="user">
                                <tr class="item">
                                  <td class="align-middle">
                                    <div class="table-custom-control custom-control custom-checkbox">
                                    </div>
                                  </td>
                                  <td>${user.userLname}, ${user.userFname}</td>
                                  <td class="align-middle">${user.userType}</td>
                                  <td class="align-middle">${user.userEmail}</td>
                                  <td class="align-middle text-right">
                                    <div class="btn-group">
                                      <label class="list-group-item custom-control custom-checkbox">
                                        <input name="facilist" type="checkbox" class="custom-control-input" value="${user.userId}">
                                        <span class="custom-control-label"></span>
                                      </label>
                                    </div>
                                  </td>
                                </tr>
                                </c:forEach>
                              </tbody>
                            </table>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-6">
                        <div class="input-group input-group-alt">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <span class="oi oi-magnifying-glass"></span>
                          </span>
                        </div>
                        <input type="text" class="form-control" placeholder="Type name of person to be assigned as Facilitator..." id="part" onkeyup="part()">
                        </div>
                          <div class="card card-fluid">
                        <div class="card-body">
                            <h2 class="section-title"> Assign a Participant </h2>
                          <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <!-- <th style="width:62px"> -->
                                  <th>
                                  </th>
                                  <!-- <th style="min-width:280px"> Name </th> -->
                                  <th> Name </th>
                                  <th> Company Position </th>
                                  <th> Email </th>
                                  <!-- <th style="width: 50px;"> &nbsp; </th> -->
                                  <th> Check </th>
                                </tr>
                              </thead>
                              <tbody id="list1">
                                <c:forEach items="${users}" var="user">
                                <tr class="item1">
                                  <td class="align-middle">
                                    <div class="table-custom-control custom-control custom-checkbox">
                                    </div>
                                  </td>
                                  <td>${user.userLname}, ${user.userFname}</td>
                                  <td class="align-middle">${user.userType}</td>
                                  <td class="align-middle">${user.userEmail}</td>
                                  <td class="align-middle text-right">
                                    <div class="btn-group">
                                      <label class="list-group-item custom-control custom-checkbox">
                                        <input name="partlist" type="checkbox" class="custom-control-input" value="${user.userId}">
                                        <span class="custom-control-label"></span>
                                      </label>
                                    </div>
                                  </td>
                                </tr>
                                </c:forEach>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                    </div>
                  <div class="form-actions" style="padding-left:45%">
                    <button class="btn btn-primary" type="submit">Confirm</button>
                    <a class="btn btn-secondary" href="/admin/adminCreateEvent?trainId=${trainID}">Back</a>
                  </div>
                  </form>
                </div>
            </div>
          </div>
        </main>
      </div>
      <script src="/vendor/jquery/jquery.min.js"></script>
      <script src="/vendor/bootstrap/js/popper.min.js"></script>
      <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
      <script src="/vendor/stacked-menu/stacked-menu.min.js"></script>
      <script src="/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
      <script src="/js/main.min.js"></script>
      </script>
</body>
    <script>
function faci() {
    var input, filter, list, item, a, i;
    input = document.getElementById("faci");
    filter = input.value.toUpperCase();
    list = document.getElementById("list");
    item = list.getElementsByClassName("item");
    for (i = 0; i < item.length; i++) {
        if (item[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
            item[i].style.display = "";
        } else {
            item[i].style.display = "none";
        }
    }
}
function part() {
    var input, filter, list, item, a, i;
    input = document.getElementById("part");
    filter = input.value.toUpperCase();
    list = document.getElementById("list1");
    item = list.getElementsByClassName("item1");
    for (i = 0; i < item.length; i++) {
        if (item[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
            item[i].style.display = "";
        } else {
            item[i].style.display = "none";
        }
    }
}
</script>
    </html>
