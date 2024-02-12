

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="cityGuide.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
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
                <h6 class="heading">Businessman</h6>
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
                        String city = cit.replace(" ", "");


                    %>

                    <center><div id="comments">
                            <div class="g-position--relative g-bg-color--primary">
                                <div class="g-container--md g-padding-y-125--xs">
                                    <div class="g-text-center--xs g-margin-t-50--xs g-margin-b-80--xs">
                                        <h2 class="g-font-size-32--xs g-font-size-36--sm g-color--white">Job Portal</h2>
                                    </div>
                                    <form class="center-block g-width-200--sm g-width-550--md" action="add_job" method="post" enctype="multipart/form-data">

                                        <div class="g-margin-b-30--xs">
                                            <label style=" margin-right: 900px; background-color: green">Select the Category</label>
                                            
                                                
  <select class="form-control s-form-v3__input" required="" id="occupation" name="occupation">
    <option value="" selected="selected" disabled="disabled">-- select one --</option>
    <optgroup label="Healthcare Practitioners and Technical Occupations:">
      <option value="Chiropractor">-  Chiropractor</option>
      <option value="Dentist">-  Dentist</option>
      <option value="Dietitian or Nutritionist">-  Dietitian or Nutritionist</option>
      <option value="Optometrist">-  Optometrist</option>
      <option value="Pharmacist">-  Pharmacist</option>
      <option value="Physician">-  Physician</option>
      <option value="Physician Assistant">-  Physician Assistant</option>
      <option value="Podiatrist">-  Podiatrist</option>
      <option value="Registered Nurse">-  Registered Nurse</option>
      <option value="Therapist">-  Therapist</option>
      <option value="Veterinarian">-  Veterinarian</option>
      <option value="Health Technologist or Technician">-  Health Technologist or Technician</option>
      <option value="Other Healthcare Practitioners and Technical Occupation">-  Other Healthcare Practitioners and Technical Occupation</option>
    </optgroup>
    <optgroup label="Healthcare Support Occupations:">
      <option value="Nursing, Psychiatric, or Home Health Aide">-  Nursing, Psychiatric, or Home Health Aide</option>
      <option value="Occupational and Physical Therapist Assistant or Aide">-  Occupational and Physical Therapist Assistant or Aide</option>
      <option value="Other Healthcare Support Occupation">-  Other Healthcare Support Occupation</option>
    </optgroup>
    <optgroup label="Business, Executive, Management, and Financial Occupations:">
      <option value="Chief Executive">-  Chief Executive</option>
      <option value="General and Operations Manager">-  General and Operations Manager</option>
      <option value="Advertising, Marketing, Promotions, Public Relations, and Sales Manager">-  Advertising, Marketing, Promotions, Public Relations, and Sales Manager</option>
      <option value="Operations Specialties Manager (e.g., IT or HR Manager)">-  Operations Specialties Manager (e.g., IT or HR Manager)</option>
      <option value="Construction Manager">-  Construction Manager</option>
      <option value="Engineering Manager">-  Engineering Manager</option>
      <option value="Accountant, Auditor">-  Accountant, Auditor</option>
      <option value="Business Operations or Financial Specialist">-  Business Operations or Financial Specialist</option>
      <option value="Business Owner">-  Business Owner</option>
      <option value="Other Business, Executive, Management, Financial Occupation">-  Other Business, Executive, Management, Financial Occupation</option>
    </optgroup>
    <optgroup label="Architecture and Engineering Occupations:">
      <option value="Architect, Surveyor, or Cartographer">-  Architect, Surveyor, or Cartographer</option>
      <option value="Engineer">-  Engineer</option>
      <option value="Other Architecture and Engineering Occupation">-  Other Architecture and Engineering Occupation</option>
    </optgroup>
    <optgroup label="Education, Training, and Library Occupations:">
      <option value="Postsecondary Teacher (e.g., College Professor)">-  Postsecondary Teacher (e.g., College Professor)</option>
      <option value="Primary, Secondary, or Special Education School Teacher">-  Primary, Secondary, or Special Education School Teacher</option>
      <option value="Other Teacher or Instructor">-  Other Teacher or Instructor</option>
      <option value="Other Education, Training, and Library Occupation">-  Other Education, Training, and Library Occupation</option>
    </optgroup>
    <optgroup label="Other Professional Occupations:">
      <option value="Arts, Design, Entertainment, Sports, and Media Occupations">-  Arts, Design, Entertainment, Sports, and Media Occupations</option>
      <option value="Computer Specialist, Mathematical Science">-  Computer Specialist, Mathematical Science</option>
      <option value="Counselor, Social Worker, or Other Community and Social Service Specialist">-  Counselor, Social Worker, or Other Community and Social Service Specialist</option>
      <option value="Lawyer, Judge">-  Lawyer, Judge</option>
      <option value="Life Scientist (e.g., Animal, Food, Soil, or Biological Scientist, Zoologist)">-  Life Scientist (e.g., Animal, Food, Soil, or Biological Scientist, Zoologist)</option>
      <option value="Physical Scientist (e.g., Astronomer, Physicist, Chemist, Hydrologist)">-  Physical Scientist (e.g., Astronomer, Physicist, Chemist, Hydrologist)</option>
      <option value="Religious Worker (e.g., Clergy, Director of Religious Activities or Education)">-  Religious Worker (e.g., Clergy, Director of Religious Activities or Education)</option>
      <option value="Social Scientist and Related Worker">-  Social Scientist and Related Worker</option>
      <option value="Other Professional Occupation">-  Other Professional Occupation</option>
    </optgroup>
    <optgroup label="Office and Administrative Support Occupations:">
      <option value="Supervisor of Administrative Support Workers">-  Supervisor of Administrative Support Workers</option>
      <option value="Financial Clerk">-  Financial Clerk</option>
      <option value="Secretary or Administrative Assistant">-  Secretary or Administrative Assistant</option>
      <option value="Material Recording, Scheduling, and Dispatching Worker">-  Material Recording, Scheduling, and Dispatching Worker</option>
      <option value="Other Office and Administrative Support Occupation">-  Other Office and Administrative Support Occupation</option>
    </optgroup>
    <optgroup label="Services Occupations:">
      <option value="Protective Service (e.g., Fire Fighting, Police Officer, Correctional Officer)">-  Protective Service (e.g., Fire Fighting, Police Officer, Correctional Officer)</option>
      <option value="Chef or Head Cook">-  Chef or Head Cook</option>
      <option value="Cook or Food Preparation Worker">-  Cook or Food Preparation Worker</option>
      <option value="Food and Beverage Serving Worker (e.g., Bartender, Waiter, Waitress)">-  Food and Beverage Serving Worker (e.g., Bartender, Waiter, Waitress)</option>
      <option value="Building and Grounds Cleaning and Maintenance">-  Building and Grounds Cleaning and Maintenance</option>
      <option value="Personal Care and Service (e.g., Hairdresser, Flight Attendant, Concierge)">-  Personal Care and Service (e.g., Hairdresser, Flight Attendant, Concierge)</option>
      <option value="Sales Supervisor, Retail Sales">-  Sales Supervisor, Retail Sales</option>
      <option value="Retail Sales Worker">-  Retail Sales Worker</option>
      <option value="Insurance Sales Agent">-  Insurance Sales Agent</option>
      <option value="Sales Representative">-  Sales Representative</option>
      <option value="Real Estate Sales Agent">-  Real Estate Sales Agent</option>
      <option value="Other Services Occupation">-  Other Services Occupation</option>
    </optgroup>
    <optgroup label="Agriculture, Maintenance, Repair, and Skilled Crafts Occupations:">
      <option value="Construction and Extraction (e.g., Construction Laborer, Electrician)">-  Construction and Extraction (e.g., Construction Laborer, Electrician)</option>
      <option value="Farming, Fishing, and Forestry">-  Farming, Fishing, and Forestry</option>
      <option value="Installation, Maintenance, and Repair">-  Installation, Maintenance, and Repair</option>
      <option value="Production Occupations">-  Production Occupations</option>
      <option value="Other Agriculture, Maintenance, Repair, and Skilled Crafts Occupation">-  Other Agriculture, Maintenance, Repair, and Skilled Crafts Occupation</option>
    </optgroup>
    <optgroup label="Transportation Occupations:">
      <option value="Aircraft Pilot or Flight Engineer">-  Aircraft Pilot or Flight Engineer</option>
      <option value="Motor Vehicle Operator (e.g., Ambulance, Bus, Taxi, or Truck Driver)">-  Motor Vehicle Operator (e.g., Ambulance, Bus, Taxi, or Truck Driver)</option>
      <option value="Other Transportation Occupation">-  Other Transportation Occupation</option>
    </optgroup>
    <optgroup label="Other Occupations:">
      <option value="Military">-  Military</option>
      <option value="Homemaker">-  Homemaker</option>
      <option value="Other Occupation">-  Other Occupation</option>
      <option value="Don't Know">-  Don't Know</option>
      <option value="Not Applicable">-  Not Applicable</option>
    </optgroup>
  </select>
                                        </div>
                                        <div class="g-margin-b-30--xs">
                                            <input type="text" class="form-control s-form-v3__input" name="Company" required="" placeholder="*Company Name">
                                        </div>
                                        <div class="g-margin-b-30--xs">
                                            <input type="text" class="form-control s-form-v3__input"  name="Description"  placeholder="*Job Description">
                                            <br>
                                            <input type="text" class="form-control s-form-v3__input"  name="vaccancy"  placeholder="*No of vaccancy">
                                            <br>
                                            <input type="text" class="form-control s-form-v3__input" name="Contact"  placeholder="*Contact Number">
                                        </div>
                                        <div class="row g-row-col-5 g-margin-b-50--xs">
                                            <div class="col-sm-6 g-margin-b-30--xs g-margin-b-0--md">
                                                <label style=" margin-right: 900px; background-color: green">City</label>
                                                <input type="text" class="form-control s-form-v3__input" name="j_city" value="<%=city%>" required="" readonly="">
                                            </div>
                                            <div class="col-sm-6">
                                                <label style=" margin-right: 900px; background-color: green">State</label>
                                                <input type="text" class="form-control s-form-v3__input" name="j_state" value="<%=state%>" required="" readonly="">
                                            </div>
                                        </div>
                                        <div class="g-margin-b-30--xs">
                                            <textarea class="form-control s-form-v3__input"  name="j_address" required="" placeholder="* Full Address"></textarea>
                                            
                                        </div>
                                        <div class="g-margin-b-80--xs">
                                        <input type="text" class="form-control s-form-v3__input" rows="5" name="offmail" required="" placeholder="*Official Mail Id">
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
        <script>

            $(function () {
                $('#colorselector').change(function () {
                    $('.colors').hide();
                    $('#' + $(this).val()).show();
                });
            });
        </script>
    </body>
</html>

