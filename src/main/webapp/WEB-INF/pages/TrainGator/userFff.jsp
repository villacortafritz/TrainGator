<!DOCTYPE html>
<html lang="en">
<head>
  <title>Facilitator's Feedback Form | TrainGator </title>
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
      <div id="printable" class="page">
        <div class="page-inner" style="padding-left:15%;padding-right:15%;">
          <header class="page-title-bar">
            <text style="visibility:hidden;"><strong>Facilitator's Feedback Form Form</strong> </text><h1 class="page-title"  style="text-align:Center;"> Facilitator's Feedback Form Form </h1>
          </header>
          <div class="page-section">
            <div class="section-deck">
              <section class="card card-fluid">
                <div class="card-body" style="padding-top: 50px;">

                  <form action="http://localhost:8080/user/submitUserFff" method="post">
                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">12. Adequate time was allocated for Lecture. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q12a" name="Q12" value ="1">
                                <label class="visual-picker-figure" for="q12a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q12b" name="Q12" value ="2">
                                <label class="visual-picker-figure" for="q12b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q12c" name="Q12" value ="3">
                                <label class="visual-picker-figure" for="q12c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q12d" name="Q12" value ="4">
                                <label class="visual-picker-figure" for="q12d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q12e" name="Q12" value ="5">
                                <label class="visual-picker-figure" for="q12e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">13. Adequate time was allocated for Q&A. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q13a" name="Q13" value ="1">
                                <label class="visual-picker-figure" for="q13a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q13b" name="Q13" value ="2">
                                <label class="visual-picker-figure" for="q13b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q13c" name="Q13" value ="3">
                                <label class="visual-picker-figure" for="q13c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q13d" name="Q13" value ="4">
                                <label class="visual-picker-figure" for="q13d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q13e" name="Q13" value ="5">
                                <label class="visual-picker-figure" for="q13e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">14. Adequate time was allocated for Exercises. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q14a" name="Q14" value ="1">
                                <label class="visual-picker-figure" for="q14a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q14b" name="Q14" value ="2">
                                <label class="visual-picker-figure" for="q14b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q14c" name="Q14" value ="3">
                                <label class="visual-picker-figure" for="q14c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q14d" name="Q14" value ="4">
                                <label class="visual-picker-figure" for="q14d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q14e" name="Q14" value ="5">
                                <label class="visual-picker-figure" for="q14e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">15. Adequate time was allocated for Workshop . [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q15a" name="Q15" value ="1">
                                <label class="visual-picker-figure" for="q15a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q15b" name="Q15" value ="2">
                                <label class="visual-picker-figure" for="q15b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q15c" name="Q15" value ="3">
                                <label class="visual-picker-figure" for="q15c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q15d" name="Q15" value ="4">
                                <label class="visual-picker-figure" for="q15d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q15e" name="Q15" value ="5">
                                <label class="visual-picker-figure" for="q15e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">16. The slide presentations and learning materials used were supportive of the topic. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q16a" name="Q16" value ="1">
                                <label class="visual-picker-figure" for="q16a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q16b" name="Q16" value ="2">
                                <label class="visual-picker-figure" for="q16b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q16c" name="Q16" value ="3">
                                <label class="visual-picker-figure" for="q16c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q16d" name="Q16" value ="4">
                                <label class="visual-picker-figure" for="q16d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q16e" name="Q16" value ="5">
                                <label class="visual-picker-figure" for="q16e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">17. The slide presentations and learning materials used were properly sequenced . [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q17a" name="Q17" value ="1">
                                <label class="visual-picker-figure" for="q17a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q17b" name="Q17" value ="2"d>
                                <label class="visual-picker-figure" for="q17b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q17c" name="Q17" value ="3">
                                <label class="visual-picker-figure" for="q17c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q17d" name="Q17" value ="4">
                                <label class="visual-picker-figure" for="q17d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q17e" name="Q17" value ="5">
                                <label class="visual-picker-figure" for="q17e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
<<<<<<< HEAD
                      </div>
                    </fieldset>
                  </form>
                  <div class="form-group">
                    <label for="exampleTextarea">22. Additional comments on the speaker.</label>
                    <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                  </div><br>
                </div>
              </section>
            </div>
            <div class="form-actions" style="margin-left:45%">
              <button class="btn btn-primary" type="submit" onclick="window.location.href='userAccomplished.html'">Submit form</button>
            </div>
=======
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">18. The speaker is able to explain concepts clearly. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q18a" name="Q18" value ="1">
                                <label class="visual-picker-figure" for="q18a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q18b" name="Q18" value ="2">
                                <label class="visual-picker-figure" for="q18b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q18c" name="Q18" value ="3">
                                <label class="visual-picker-figure" for="q18c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q18d" name="Q18" value ="4">
                                <label class="visual-picker-figure" for="q18d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q18e" name="Q18" value ="5">
                                <label class="visual-picker-figure" for="q18e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">19. The speaker is well-organized. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q19a" name="Q19" value ="1">
                                <label class="visual-picker-figure" for="q19a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q19b" name="Q19" value ="2">
                                <label class="visual-picker-figure" for="q19b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q19c" name="Q19" value ="3">
                                <label class="visual-picker-figure" for="q19c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q19d" name="Q19" value ="4">
                                <label class="visual-picker-figure" for="q19d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q19e" name="Q19" value ="5">
                                <label class="visual-picker-figure" for="q19e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">20. The speaker provides a stimulating atmosphere that encourages discussion. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q20a" name="Q20" value ="1">
                                <label class="visual-picker-figure" for="q20a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q20b" name="Q20" value ="2">
                                <label class="visual-picker-figure" for="q20b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q20c" name="Q20" value ="3">
                                <label class="visual-picker-figure" for="q20c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q20d" name="Q20" value ="4">
                                <label class="visual-picker-figure" for="q20d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q20e" name="Q20" value ="5">
                                <label class="visual-picker-figure" for="q20e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                      <fieldset>
                        <div class="form-group">
                          <label for="exampleInputEmail1">21. The speaker projects and image of authority. [1-Strongly Agree : 5-Strongly Disagree]</label>
                          <div class="col-lg-9" style="padding-top: 10px;">
                            <section class="text-center text-sm-left">
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q21a" name="Q21" value ="1">
                                <label class="visual-picker-figure" for="q21a">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>1</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q21b" name="Q21" value ="2">
                                <label class="visual-picker-figure" for="q21b">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>2</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q21c" name="Q21" value ="3">
                                <label class="visual-picker-figure" for="q21c">
                                  <span class="visual-picker-content" style="padding-bottom:15px;">
                                    <strong>3</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q21d" name="Q21" value ="4">
                                <label class="visual-picker-figure" for="q21d">
                                  <span class="visual-picker-content">
                                    <strong>4</strong>
                                  </span>
                                </label>
                              </div>
                              <div class="visual-picker visual-picker-sm has-peek px-3">
                                <input type="radio" id="q21e" name="Q21" value ="5">
                                <label class="visual-picker-figure" for="q21e">
                                  <span class="visual-picker-content">
                                    <strong>5</strong>
                                  </span>
                                </label>
                              </div>
                            </section>
                          </div>
                        </div>
                      </fieldset>

                    <div class="form-group">
                      <label for="exampleTextarea">22. Additional comments on the speaker.</label>
                      <input type="text" name="Q22" class="form-control" id="exampleTextarea" rows="3">
                    </div><br>




                  </div>
                </section>
              </div>
              <div class="form-actions" style="margin-left:45%">
                <button class="btn btn-primary" type="submit">Submit form</button>
              </div>
            </form>

          </div>
        </div>
      </div>
      <a href="javascript:demoFromHTML()" class="button">Download Form</a>
      
    </div>
  </main>
  
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>

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
                pdf.save('FFF.pdf');
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
