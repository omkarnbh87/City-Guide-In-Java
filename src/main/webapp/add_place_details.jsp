

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>City Guide</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script src="cities.js"></script>
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear">
    <div class="fl_left"> 
      <!-- ################################################################################################ -->
      <ul class="nospace">
        <li><i class="fas fa-phone rgtspace-5"></i> +91 9627408969</li>
        <li><i class="far fa-envelope rgtspace-5"></i> nbhsoftech.com</li>
      </ul>
      <!-- ################################################################################################ -->
    </div>
    <div class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="nospace">
        <li><a href="index.html"><i class="fas fa-home"></i></a></li>
        <li><a href="#" title="Help Centre"><i class="far fa-life-ring"></i></a></li>
        <li><a href="#" title="Login"><i class="fas fa-sign-in-alt"></i></a></li>
        <li><a href="#" title="Sign Up"><i class="fas fa-edit"></i></a></li>
        <li id="searchform">
          <div>
            <form action="#" method="post">
              <fieldset>
                <legend>Quick Search:</legend>
                <input type="text" placeholder="Enter search term&hellip;">
                <button type="submit"><i class="fas fa-search"></i></button>
              </fieldset>
            </form>
          </div>
        </li>
      </ul>
      <!-- ################################################################################################ -->
    </div>
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1">
  <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1><a href="index.html">City Guide</a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
                        <li class="active"><a href="Admin_home.jsp">Home</a></li>
                        <li><a href="Add_places.jsp">Add Places</a></li>
                        <li><a href="Place_Details.jsp">Place Details</a></li>
                        <li><a href="StudentDetail.jsp">Student</a></li>
                        <li><a href="BusinessmanDetail.jsp">Businessman</a></li>
                        <li><a href="JobseekerDetail.jsp">Jobs</a></li>
                        
                        <li><a href="index.jsp">Logout</a></li>
                    </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay gradient" style="background-image:url('../images/demo/backgrounds/01.png');">
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">Add Places</h6>
    <ul>
    </ul>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
     
      <% 
          String state = request.getParameter("stt");
          String cit = request.getParameter("city");
          String city = cit.replace( " ","");
          
          
          %>
      
      
      
      <center><div id="comments">
        <div class="g-position--relative g-bg-color--primary">
            <div class="g-container--md g-padding-y-125--xs">
                <div class="g-text-center--xs g-margin-t-50--xs g-margin-b-80--xs">
                    <h2 class="g-font-size-32--xs g-font-size-36--sm g-color--white">Add Places</h2>
                </div>
                <form class="center-block g-width-200--sm g-width-550--md" action="add_places" method="post" enctype="multipart/form-data">
                    
                     <div class="g-margin-b-30--xs">
                         <label style=" margin-right: 900px; background-color: green">Select the Category</label>
                         <Select type="text" class="form-control s-form-v3__input" name="cat" required="">
                             <option value="ATM">ATM</option>
                             <option value="Hospital">Hospital</option>
                             <option value="Hotels">Hotels</option>
                             <option value="Tplaces">Tourist Places</option>
                         </select>
                    </div>
                    <div class="g-margin-b-30--xs">
                        <input type="text" class="form-control s-form-v3__input" name="p_name" required="" placeholder="* Place Name">
                    </div>
                    <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-4 g-margin-b-30--xs g-margin-b-0--md">
                            <input type="file" class="form-control s-form-v3__input" name="pic1" required="" placeholder="images">
                        </div>
                        <div class="col-sm-4">
                            <input type="file" class="form-control s-form-v3__input" name="pic2" required="" placeholder="* images">
                        </div>
                        <div class="col-sm-4">
                            <input type="file" class="form-control s-form-v3__input" name="pic3" required="" placeholder="* images">
                        </div>
                    </div>
                    <div class="row g-row-col-5 g-margin-b-50--xs">
                        <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                            <input type="text" class="form-control s-form-v3__input" name="p_city" value="<%=city%>" required="" readonly="">
                        </div>
                        <div class="col-sm-6">
                            <input type="text" class="form-control s-form-v3__input" name="p_state" value="<%=state%>" required="" readonly="">
                        </div>
                    </div>
                    <div class="g-margin-b-30--xs">
                        <input type="text" class="form-control s-form-v3__input" name="p_address" required="" placeholder="* Full Address">
                    </div>
                     <div class="g-margin-b-80--xs">
                         <textarea class="form-control s-form-v3__input" rows="5" name="des" required="" placeholder="* Description"></textarea>
                    </div>
                    <div class="g-text-center--xs">
                        <button type="submit" class="text-uppercase s-btn s-btn--md s-btn--white-bg g-radius--50 g-padding-x-70--xs g-margin-b-20--xs">Submit</button>
                    </div>
                </form>
            </div>
        </div>
        </div></center>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">nbhsoftech - <a href="#">City Guide</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="cities.js"></script>
</body>
</html>
