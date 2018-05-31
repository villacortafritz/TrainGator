<!DOCTYPE html>
<html lang="en">
<head>
  <title> Course Feedback Form | TrainGator </title>
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
            <a href="/user/userJoined">
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
              <button class="btn btn-primary" style="height:55px" onclick="window.location = '/user/userJoined'">
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
                  <a class="dropdown-item" href="/logout">
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
        <div id = "printable" class="page-inner" style="padding-left:15%; padding-right:15%;">
          <header class="page-title-bar">
            <text  style="visibility: hidden;"><strong>Course Feedback Form</strong></text><h1 id ="titel" class="page-title" style="text-align:center;"> Course Feedback Form</h1>
          </header>
          <div class="page-section">
          <form action="http://localhost:8080/user/submitUserCff" method="post">
          <label> Course Feedback Form </label><br>
          <input name="formid" value="${whatForm}"><label> ${whatForm} </label><br>
            <div class="section-deck">
                <section class="card card-fluid">
                  <div class="card-body">
                    <div class="form-group">
                   
                      <strong><label for="customRadio1" style="padding:30px">1. Comprehension of the Subject. (This question pertains to how the comprehension of the student improved,<br>&nbsp;&nbsp;&nbsp; by comparing their comprehension before the class and after the class.) </label></strong><br>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio1" class="custom-control-input" id="customRadio1" value="3 or more levels">
                        <label class="custom-control-label" for="customRadio1"><text style="visibility:hidden;">[ ] </text>3 or more levels</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio1" class="custom-control-input" id="customRadio2" value="2 Levels">
                        <label class="custom-control-label" for="customRadio2"><text style="visibility:hidden;">[ ] </text>2 Levels</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px" >
                        <input type="radio" name="customRadio1" class="custom-control-input" id="customRadio3" value="1 Level">
                        <label class="custom-control-label" for="customRadio3"><text style="visibility:hidden;">[ ] </text>1 Level</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio1" class="custom-control-input" id="customRadio4" value="No Improvement">
                        <label class="custom-control-label" for="customRadio4"><text style="visibility:hidden;">[ ] </text>No Improvement</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio1" class="custom-control-input" id="customRadio5" value="Regressed">
                        <label class="custom-control-label" for="customRadio5"><text style="visibility:hidden;">[ ] </text>Regressed</label>
                      </div>
                    </div>
                    <div class="form-group">
                      <strong><label for="customRadio2" style="padding:30px">2. If your answer to #1 is either "No improvement" or "Regressed", give your reason(s) by choosing one or several of the items below:</label></strong><br>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio6" value="The textbooks/manuals were too difficult.">
                        <label class="custom-control-label" for="customRadio6"><text style="visibility:hidden;">[ ] </text>The textbooks/manuals were too difficult.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px" >
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio7" value="The textbooks/manuals were inadequate.">
                        <label class="custom-control-label" for="customRadio7"><text style="visibility:hidden;">[ ] </text>The textbooks/manuals were inadequate.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio8" value="The explanation of the instructor was insufficient.">
                        <label class="custom-control-label" for="customRadio8"><text style="visibility:hidden;">[ ] </text>The explanation of the instructor was insufficient.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px" >
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio9" value="The content of the lectures was too difficult.">
                        <label class="custom-control-label" for="customRadio9"><text style="visibility:hidden;">[ ] </text>The content of the lectures was too difficult.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio10" value="The size of the class was too big.">
                        <label class="custom-control-label" for="customRadio10"><text style="visibility:hidden;">[ ] </text>The size of the class was too big.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio11" value="I did not have enough time to finish the exercise.">
                        <label class="custom-control-label" for="customRadio12"><text style="visibility:hidden;">[ ] </text>I did not have enough time to finish the exercise.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio13" value="I did not have pre-knowledge of this subject.">
                        <label class="custom-control-label" for="customRadio13"><text style="visibility:hidden;">[ ] </text>I did not have pre-knowledge of this subject..</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio14" value="I was absent during critical period of the subject.">
                        <label class="custom-control-label" for="customRadio14"><text style="visibility:hidden;">[ ] </text>I was absent during critical period of the subject.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio15" value="I did not pay sufficient attention to instructor.">
                        <label class="custom-control-label" for="customRadio15"><text style="visibility:hidden;">[ ] </text>I did not pay sufficient attention to instructor.</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio2" class="custom-control-input" id="customRadio16" value="My computer experience was insufficient.">
                        <label class="custom-control-label" for="customRadio16"><text style="visibility:hidden;">[ ] </text>My computer experience was insufficient.</label>
                      </div>
                     
                    </div>
                    <div class="form-group">
                      <strong><label for="customRadio3" style="padding:30px">3. How well did you understand each objective given by the instructor?</label></strong><br>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio3" class="custom-control-input" id="customRadio19" value="Very Well">
                        <label class="custom-control-label" for="customRadio19"><text style="visibility:hidden;">[ ] </text>Very Well</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio3" class="custom-control-input" id="customRadio20" value="Well">
                        <label class="custom-control-label" for="customRadio20"><text style="visibility:hidden;">[ ] </text>Well</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio3" class="custom-control-input" id="customRadio21" value="Fair">
                        <label class="custom-control-label" for="customRadio21"><text style="visibility:hidden;">[ ] </text>Fair</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio3" class="custom-control-input" id="customRadio22" value="Little">
                        <label class="custom-control-label" for="customRadio22"><text style="visibility:hidden;">[ ] </text>Little</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio3" class="custom-control-input" id="customRadio23" value="Very Little">
                        <label class="custom-control-label" for="customRadio23"><text style="visibility:hidden;">[ ] </text>Very Little</label>
                      </div>
                      <div class="custom-control custom-radio" style="margin-left:70px; margin-bottom:10px">
                        <input type="radio" name="customRadio3" class="custom-control-input" id="customRadio24" value="No Response">
                        <label class="custom-control-label" for="customRadio24"><text style="visibility:hidden;">[ ] </text>No Response</label>
                      </div>
                    </div>
                  </div>
                </section>
            </div>
            <div class="form-actions" style="padding-left:45%">
              <button class="btn btn-primary" type="submit">Submit form</button>
            </div>
            </form>
            
            
          </div>
          
      </div>
      <a href="javascript:demoFromHTML()" class="button">Download Form</a>
      
    </div>
  </main>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>

   <script>
   
   
    function demoFromHTML() {
        var pdf = new jsPDF('p', 'pt', 'letter');
        // source can be HTML-formatted string, or a reference
        // to an actual DOM element from which the text will be scraped.
        source = $('#printable')[0];

        // we support special element handlers. Register them with jQuery-style 
        // ID selector for either ID or node name. ("#iAmID", "div", "span" etc.)
        // There is no support for any other type of selectors 
        // (class, of compound) at this time.
        specialElementHandlers = {
            // element with id of "bypass" - jQuery style selector
            '#bypassme': function (element, renderer) {
                // true = "handled elsewhere, bypass text extraction"
                return true
            }
        };
        margins = {
            top: 80,
            bottom: 60,
            left: 40,
            width: 522
        };
        // all coords and widths are in jsPDF instance's declared units
        // 'inches' in this case
        pdf.fromHTML(
            source, // HTML string or DOM elem ref.
            margins.left, // x coord
            margins.top, { // y coord
                'width': margins.width, // max width of content on PDF
                'elementHandlers': specialElementHandlers
            },

            function (dispose) {
                // dispose: object with X, Y of the last line add to the PDF 
                //          this allow the insertion of new lines after html
                pdf.save('CFF.pdf');
            }, margins
        );
    }
</script>
  <script src="/vendor/jquery/jquery.min.js"></script>
  <script src="/vendor/bootstrap/js/popper.min.js"></script>
  <script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
  <script src="/vendor/stacked-menu/stacked-menu.min.js"></script>
  <script src="/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
  <script src="/js/main.min.js"></script>
</body>
</html>
