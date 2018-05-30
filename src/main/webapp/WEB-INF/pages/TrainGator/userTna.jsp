<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Training Needs Analysis Form | TrainGator </title>
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
              <a href="userJoined.html">
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
                <button class="btn btn-primary" style="height:55px" onclick="window.location = 'userJoined.html'">
                  <span class="oi oi-home ml-1"></span>
                </button>
                <div class="dropdown">
                  <button class="btn-account d-none d-md-flex" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="account-summary pr-lg-4 d-none d-lg-block">
                      <span class="account-name">Name of User</span>
                      <span class="account-description">Participant/Supervisor</span>
                    </span>
                  </button>
                  <div class="dropdown-arrow dropdown-arrow-left"></div>
                  <div class="dropdown-menu">
                    <h6 class="dropdown-header d-none d-md-block d-lg-none"> Name of User </h6>
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
            <div class="page-inner" style="padding-left:15%; padding-right:15%;">
              <header class="page-title-bar">
                <h1 class="page-title" style="text-align:Center;"> Training Needs Analysis Form</h1>
              </header>
              <div class="page-section">
                <div class="section-deck">
                  <section class="card card-fluid">
                    <div class="card-body">
                      <table>
                          <tr>
                            <td colspan="2"  style="padding: 10px; width:1000px">Name of Employee:
                              <input type="text" name="" class="form-control form-control-sm">
                            </td>
                          </tr>
                          <tr>
                            <td colspan="2" style="padding: 10px; width:1000px">Name of Supervisor:
                              <input type="text" name="" class="form-control form-control-sm">
                            </td>
                          </tr>
                        </table>
                    </div>
                  </section>
                </div>
              </div>
              <div class="page-section">
                <div class="section-deck">
                  <section class="card card-fluid">
                    <div class="card-body">
                    <table>
                        <tr>
                          <td rowspan="2"><center>Major tasks of position </center></td>
                          <td colspan="2"><center>Training required?</center></td>
                          <td rowspan="2"><center>If yes, Identify what <br>training is needed.</center></td>
                          <td rowspan="2"><center>How will this be achieved?(e.g. on the job, external training)</center></td>
                          <td rowspan="2"><center>When?</center></td>
                          <td rowspan="2"><center>Who to organize?  Training provider?</center></td>
                        </tr>
                        <tr>
                          <td><center>Yes</center></td>
                          <td><center>No</center></td>
                        </tr>
                        <tr>
                          <td width="20%" style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton1">
                          </td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton1">
                          </td>
                          <td style="padding: 10px; padding-top:25px"><div class="form-group">
                            <select id="exampleSelect1" class="custom-select">
                              <option selected> --------------------- </option>
                              <option value="1"> Scope Management </option>
                              <option value="2"> Schedule Management </option>
                              <option value="3"> Quality Management </option>
                              <option value="4"> Manpower Management </option>
                              <option value="5"> Cost Management </option>
                              <option value="6"> Communication Management </option>
                              <option value="7"> Problem Management </option>
                              <option value="8"> Risk Management </option>
                              <option value="9"> Making of the recovery CD </option>
                              <option value="10"> Setup </option>
                              <option value="11"> Operations </option>
                              <option value="12"> Setup of Simulator </option>
                              <option value="13"> Simulator Operations </option>
                              <option value="14"> HOST Simulator Operations </option>
                              <option value="15"> Japanese </option>
                              <option value="16"> English </option>
                              <option value="17"> Development Process </option>
                              <option value="18"> Devise Development Plan </option>
                              <option value="19"> Bug Analysis </option>
                              <option value="20"> Test / SIT / UAT Issue Management </option>
                              <option value="21"> Grasp of Technology Trends </option>
                              <option value="22"> Communication Skill As Expert On The Field </option>
                              <option value="23"> Estimation of the Development </option>
                              <option value="24"> Review Specification </option>
                              <option value="25"> Review Source Code </option>
                              <option value="26"> Making of Test Cases </option>
                              <option value="27"> Review Test Cases </option>
                              <option value="28"> Log Analysis </option>
                              <option value="29"> C / C++ </option>
                              <option value="30"> C# </option>
                              <option value="31"> .NET </option>
                              <option value="32"> MySQL </option>
                              <option value="33"> HTML </option>
                              <option value="34"> VBS </option>
                              <option value="35"> JAVA / J2EE </option>
                              <option value="36"> Windows 7 Specs </option>
                              <option value="37"> Windows 7 Development </option>
                              <option value="38"> Linux Spec </option>
                              <option value="39"> Linux Development </option>
                              <option value="40"> NDC </option>
                              <option value="41"> DDC </option>
                              <option value="42"> ISO </option>
                              <option value="43"> IFX </option>
                              <option value="44"> EMZ </option>
                              <option value="45"> PCI </option>
                              <option value="46"> CEN / XFS </option>
                              <option value="47"> BIO API </option>
                              <option value="48"> Leadership </option>
                              <option value="49"> Competitive Human Resources </option>
                              <option value="50"> Communication Skill </option>
                            </select>
                          </div></td>
                          <td style="padding: 10px;" width="20%"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="date" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                        </tr>
                        <tr>
                          <td width="20%" style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton2">
                          </td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton2">
                          </td>
                          <td style="padding: 10px; padding-top:25px"><div class="form-group">
                            <select id="exampleSelect1" class="custom-select">
                              <option selected> --------------------- </option>
                              <option value="1"> Scope Management </option>
                              <option value="2"> Schedule Management </option>
                              <option value="3"> Quality Management </option>
                              <option value="4"> Manpower Management </option>
                              <option value="5"> Cost Management </option>
                              <option value="6"> Communication Management </option>
                              <option value="7"> Problem Management </option>
                              <option value="8"> Risk Management </option>
                              <option value="9"> Making of the recovery CD </option>
                              <option value="10"> Setup </option>
                              <option value="11"> Operations </option>
                              <option value="12"> Setup of Simulator </option>
                              <option value="13"> Simulator Operations </option>
                              <option value="14"> HOST Simulator Operations </option>
                              <option value="15"> Japanese </option>
                              <option value="16"> English </option>
                              <option value="17"> Development Process </option>
                              <option value="18"> Devise Development Plan </option>
                              <option value="19"> Bug Analysis </option>
                              <option value="20"> Test / SIT / UAT Issue Management </option>
                              <option value="21"> Grasp of Technology Trends </option>
                              <option value="22"> Communication Skill As Expert On The Field </option>
                              <option value="23"> Estimation of the Development </option>
                              <option value="24"> Review Specification </option>
                              <option value="25"> Review Source Code </option>
                              <option value="26"> Making of Test Cases </option>
                              <option value="27"> Review Test Cases </option>
                              <option value="28"> Log Analysis </option>
                              <option value="29"> C / C++ </option>
                              <option value="30"> C# </option>
                              <option value="31"> .NET </option>
                              <option value="32"> MySQL </option>
                              <option value="33"> HTML </option>
                              <option value="34"> VBS </option>
                              <option value="35"> JAVA / J2EE </option>
                              <option value="36"> Windows 7 Specs </option>
                              <option value="37"> Windows 7 Development </option>
                              <option value="38"> Linux Spec </option>
                              <option value="39"> Linux Development </option>
                              <option value="40"> NDC </option>
                              <option value="41"> DDC </option>
                              <option value="42"> ISO </option>
                              <option value="43"> IFX </option>
                              <option value="44"> EMZ </option>
                              <option value="45"> PCI </option>
                              <option value="46"> CEN / XFS </option>
                              <option value="47"> BIO API </option>
                              <option value="48"> Leadership </option>
                              <option value="49"> Competitive Human Resources </option>
                              <option value="50"> Communication Skill </option>
                            </select>
                          </div></td>
                          <td style="padding: 10px;" width="20%"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="date" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                        </tr>
                        <tr>
                          <td width="20%" style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton3">
                          </td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton3">
                          </td>
                          <td style="padding: 10px; padding-top:25px"><div class="form-group">
                            <select id="exampleSelect1" class="custom-select">
                              <option selected> --------------------- </option>
                              <option value="1"> Scope Management </option>
                              <option value="2"> Schedule Management </option>
                              <option value="3"> Quality Management </option>
                              <option value="4"> Manpower Management </option>
                              <option value="5"> Cost Management </option>
                              <option value="6"> Communication Management </option>
                              <option value="7"> Problem Management </option>
                              <option value="8"> Risk Management </option>
                              <option value="9"> Making of the recovery CD </option>
                              <option value="10"> Setup </option>
                              <option value="11"> Operations </option>
                              <option value="12"> Setup of Simulator </option>
                              <option value="13"> Simulator Operations </option>
                              <option value="14"> HOST Simulator Operations </option>
                              <option value="15"> Japanese </option>
                              <option value="16"> English </option>
                              <option value="17"> Development Process </option>
                              <option value="18"> Devise Development Plan </option>
                              <option value="19"> Bug Analysis </option>
                              <option value="20"> Test / SIT / UAT Issue Management </option>
                              <option value="21"> Grasp of Technology Trends </option>
                              <option value="22"> Communication Skill As Expert On The Field </option>
                              <option value="23"> Estimation of the Development </option>
                              <option value="24"> Review Specification </option>
                              <option value="25"> Review Source Code </option>
                              <option value="26"> Making of Test Cases </option>
                              <option value="27"> Review Test Cases </option>
                              <option value="28"> Log Analysis </option>
                              <option value="29"> C / C++ </option>
                              <option value="30"> C# </option>
                              <option value="31"> .NET </option>
                              <option value="32"> MySQL </option>
                              <option value="33"> HTML </option>
                              <option value="34"> VBS </option>
                              <option value="35"> JAVA / J2EE </option>
                              <option value="36"> Windows 7 Specs </option>
                              <option value="37"> Windows 7 Development </option>
                              <option value="38"> Linux Spec </option>
                              <option value="39"> Linux Development </option>
                              <option value="40"> NDC </option>
                              <option value="41"> DDC </option>
                              <option value="42"> ISO </option>
                              <option value="43"> IFX </option>
                              <option value="44"> EMZ </option>
                              <option value="45"> PCI </option>
                              <option value="46"> CEN / XFS </option>
                              <option value="47"> BIO API </option>
                              <option value="48"> Leadership </option>
                              <option value="49"> Competitive Human Resources </option>
                              <option value="50"> Communication Skill </option>
                            </select>
                          </div></td>
                          <td style="padding: 10px;" width="20%"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="date" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                        </tr>
                        <tr>
                          <td width="20%" style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton4">
                          </td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton4">
                          </td>
                          <td style="padding: 10px; padding-top:25px"><div class="form-group">
                            <select id="exampleSelect1" class="custom-select">
                              <option selected> --------------------- </option>
                              <option value="1"> Scope Management </option>
                              <option value="2"> Schedule Management </option>
                              <option value="3"> Quality Management </option>
                              <option value="4"> Manpower Management </option>
                              <option value="5"> Cost Management </option>
                              <option value="6"> Communication Management </option>
                              <option value="7"> Problem Management </option>
                              <option value="8"> Risk Management </option>
                              <option value="9"> Making of the recovery CD </option>
                              <option value="10"> Setup </option>
                              <option value="11"> Operations </option>
                              <option value="12"> Setup of Simulator </option>
                              <option value="13"> Simulator Operations </option>
                              <option value="14"> HOST Simulator Operations </option>
                              <option value="15"> Japanese </option>
                              <option value="16"> English </option>
                              <option value="17"> Development Process </option>
                              <option value="18"> Devise Development Plan </option>
                              <option value="19"> Bug Analysis </option>
                              <option value="20"> Test / SIT / UAT Issue Management </option>
                              <option value="21"> Grasp of Technology Trends </option>
                              <option value="22"> Communication Skill As Expert On The Field </option>
                              <option value="23"> Estimation of the Development </option>
                              <option value="24"> Review Specification </option>
                              <option value="25"> Review Source Code </option>
                              <option value="26"> Making of Test Cases </option>
                              <option value="27"> Review Test Cases </option>
                              <option value="28"> Log Analysis </option>
                              <option value="29"> C / C++ </option>
                              <option value="30"> C# </option>
                              <option value="31"> .NET </option>
                              <option value="32"> MySQL </option>
                              <option value="33"> HTML </option>
                              <option value="34"> VBS </option>
                              <option value="35"> JAVA / J2EE </option>
                              <option value="36"> Windows 7 Specs </option>
                              <option value="37"> Windows 7 Development </option>
                              <option value="38"> Linux Spec </option>
                              <option value="39"> Linux Development </option>
                              <option value="40"> NDC </option>
                              <option value="41"> DDC </option>
                              <option value="42"> ISO </option>
                              <option value="43"> IFX </option>
                              <option value="44"> EMZ </option>
                              <option value="45"> PCI </option>
                              <option value="46"> CEN / XFS </option>
                              <option value="47"> BIO API </option>
                              <option value="48"> Leadership </option>
                              <option value="49"> Competitive Human Resources </option>
                              <option value="50"> Communication Skill </option>
                            </select>
                          </div></td>
                          <td style="padding: 10px;" width="20%"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="date" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                        </tr>
                        <tr>
                          <td width="20%" style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton5">
                          </td>
                          <td style="padding: 10px;">
                            <input type="radio"  class="form-control" name="radioButton5">
                          </td>
                          <td style="padding: 10px; padding-top:25px"><div class="form-group">
                            <select id="exampleSelect1" class="custom-select">
                              <option selected> --------------------- </option>
                              <option value="1"> Scope Management </option>
                              <option value="2"> Schedule Management </option>
                              <option value="3"> Quality Management </option>
                              <option value="4"> Manpower Management </option>
                              <option value="5"> Cost Management </option>
                              <option value="6"> Communication Management </option>
                              <option value="7"> Problem Management </option>
                              <option value="8"> Risk Management </option>
                              <option value="9"> Making of the recovery CD </option>
                              <option value="10"> Setup </option>
                              <option value="11"> Operations </option>
                              <option value="12"> Setup of Simulator </option>
                              <option value="13"> Simulator Operations </option>
                              <option value="14"> HOST Simulator Operations </option>
                              <option value="15"> Japanese </option>
                              <option value="16"> English </option>
                              <option value="17"> Development Process </option>
                              <option value="18"> Devise Development Plan </option>
                              <option value="19"> Bug Analysis </option>
                              <option value="20"> Test / SIT / UAT Issue Management </option>
                              <option value="21"> Grasp of Technology Trends </option>
                              <option value="22"> Communication Skill As Expert On The Field </option>
                              <option value="23"> Estimation of the Development </option>
                              <option value="24"> Review Specification </option>
                              <option value="25"> Review Source Code </option>
                              <option value="26"> Making of Test Cases </option>
                              <option value="27"> Review Test Cases </option>
                              <option value="28"> Log Analysis </option>
                              <option value="29"> C / C++ </option>
                              <option value="30"> C# </option>
                              <option value="31"> .NET </option>
                              <option value="32"> MySQL </option>
                              <option value="33"> HTML </option>
                              <option value="34"> VBS </option>
                              <option value="35"> JAVA / J2EE </option>
                              <option value="36"> Windows 7 Specs </option>
                              <option value="37"> Windows 7 Development </option>
                              <option value="38"> Linux Spec </option>
                              <option value="39"> Linux Development </option>
                              <option value="40"> NDC </option>
                              <option value="41"> DDC </option>
                              <option value="42"> ISO </option>
                              <option value="43"> IFX </option>
                              <option value="44"> EMZ </option>
                              <option value="45"> PCI </option>
                              <option value="46"> CEN / XFS </option>
                              <option value="47"> BIO API </option>
                              <option value="48"> Leadership </option>
                              <option value="49"> Competitive Human Resources </option>
                              <option value="50"> Communication Skill </option>
                            </select>
                          </div></td>
                          <td style="padding: 10px;" width="20%"><input type="text" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="date" name="" class="form-control form-control-sm"></td>
                          <td style="padding: 10px;"><input type="text" name="" class="form-control form-control-sm"></td>
                        </tr>
                      </table>
                    </div>
                  </section>
                </div>
              </div>
              <div class="page-section">
                <div class="section-deck">
                    <section class="card card-fluid">
                      <div class="card-body">
                        <table>
                          <tr style="padding: 10px; margin: 10px;">
                            What do we want to achieve in the period ahead?
                          </tr>
                          <tr style="padding: 10px; margin: 10px;">
                            <textarea class="form-control" placeholder="Enter comment here"></textarea>
                            </br>
                          </tr>
                          <tr style="padding: 10px; margin: 10px;">
                            Where do you/we see your career progressing in the next two years?
                          </tr>
                          <tr style="padding: 10px; margin: 10px;">
                            <textarea class="form-control" placeholder="Enter comment here"></textarea>
                            </br>
                          </tr>
                          <tr style="padding: 10px; margin: 10px;">
                            How are we going to make this happen?
                          </tr>
                          <tr style="padding: 10px; margin: 10px;">
                            <textarea class="form-control" placeholder="Enter comment here"></textarea>
                            </br>
                          </tr>
                          <tr style="padding: 10px; margin: 10px;">
                            What will you need from the company to help you to reach your career goals?
                          </tr>
                          <tr style="padding: 10px; margin: 10px;">
                            <textarea class="form-control" placeholder="Enter comment here"></textarea>
                            </br>
                          </tr>
                        </table>
                      </div>
                    </section>
                </div>
                <div class="form-actions" style="padding-left:45%">
                  <button class="btn btn-primary" type="submit" onclick="window.location.href='userJoined.html'">Submit form</button>
                </div>
              </div>
          </div>
        </div>
      </div>
    </main>
    <script src="/vendor/jquery/jquery.min.js"></script>
    <script src="/vendor/bootstrap/js/popper.min.js"></script>
    <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="/vendor/stacked-menu/stacked-menu.min.js"></script>
    <script src="/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="/js/main.min.js"></script>
  </body>
</html>
