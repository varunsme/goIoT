<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<link rel="icon" type="image/png" href="/info.mourya.goiot/resources/headlogo.png">
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-pink.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.navbuttons{
  width: 100%;
  padding-top:10px;
  padding-bottom:10px;
  padding-left: 16px;
  text-align:left;
  border: none;
  background: none;
  -webkit-transition-duration: 0.6s; /* Safari */
  transition-duration: 0.6s;
}
.navbuttons:hover{
    background-color: #4d94ff; /* Green */
    color: white;
}
.hidden{
  display: none;
}
</style>

<script type="text/javascript">
  var divs = ["d1", "d2", "d3"];
  var visibleDivId = null;
  function toggleVisibility(divId) {
    if(visibleDivId === divId) {
      visibleDivId = null;
    } else {
      visibleDivId = divId;
    }
    hideNonVisibleDivs();
  }

  function hideNonVisibleDivs() {
    var i, divId, div;
    for(i = 0; i < divs.length; i++) {
      divId = divs[i];
      div = document.getElementById(divId);
      if(visibleDivId === divId) {
        div.style.display = "block";
      } else {
        div.style.display = "none";
      }
    }
  }
  function unhide(clickedButton, divID){
	  var item = document.getElementById(divID);
	 
	  if(item){
		  if(item.className == 'hidden'){
			  item.className = 'unhidden';
			  document.getElementByID("maincontent").style = 'margin-left:200px;margin-top:43px';
		  }
		  else{
			  item.className = 'hidden';
			  document.getElementByID("maincontent").style = 'margin-left:0px;margin-top:43px';
		  }
	  }
  }
  
</script>

<body>
<!-- Top container -->
<div class="w3-container w3-top w3-theme-dark w3-large w3-padding" style="z-index:4">
  <button class="w3-btn w3-padding-0 w3-theme-dark w3-hover-text-grey w3-center" onclick="unhide(this,'mySidenav')"><i class="fa fa-bars"></i>&nbsp;</button>
  <span class="w3-right"><img src="/info.mourya.goiot/resources/headlogo.png" style="height:30px;"></span>
</div>
<!-- Sidenav/menu -->
<div id="mySidenav" style="max-width:100px;" class="hidden">
<nav class="w3-sidenav w3-light-grey"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="/info.mourya.goiot/resources/avatar1.png" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8">
      <span>Hello, <strong>${patientDetailsObject.patientLName}</strong></span><br>
      <a href="#" class="w3-hover-none w3-hover-text-red w3-show-inline-block"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-hover-none w3-hover-text-green w3-show-inline-block"><i class="fa fa-user"></i></a>
      <a href="#" class="w3-hover-none w3-hover-text-blue w3-show-inline-block"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <hr style="border-top:3px double #8c8b8b;">
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="nav">
    <button id="a1" class="navbuttons" onclick="toggleVisibility('d1')" ><i class="fa fa-medkit fa-fw"></i>&nbsp; Overview</button>
    <button id="a2" class="navbuttons" onclick="toggleVisibility('d2')"><i class="fa fa-users fa-fw"></i>&nbsp; Prescription</button>
    <button id="a4" class="navbuttons" onclick="toggleVisibility('d3')"><i class="fa fa-cog fa-fw"></i>&nbsp; Settings</button>
    <a href="/info.mourya.goiot/Logout.html" class="w3-padding links"><i class="fa fa-sign-out fa-fw"></i>&nbsp; Log Out</a>
</nav>
</div>

<!-- Overlay effect when opening sidenav on small screens -->
<!--<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>-->

<!-- !PAGE CONTENT! -->
<div id="maincontent" class="w3-main" style="margin-top:43px;">
  <div id="d1" class="w3-container">
    <br><br>
    <header class="w3-container" style="padding-top:22px">
      <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
    </header>
    <div class="w3-row-padding w3-margin-bottom">
      <div class="w3-third">
        <div class="w3-container w3-teal w3-padding-16">
          <div class="w3-left"><i class="fa fa-user-md w3-xxxlarge"></i></div>
          <div class="w3-right">
            <h3>${patientDetailsObject.statDetailsObject.docCount}</h3>
          </div>
          <div class="w3-clear"></div>
          <h4>Doctors</h4>
        </div>
      </div>
      <div class="w3-third">
        <div class="w3-container w3-red w3-padding-16">
          <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
          <div class="w3-right">
            <h3>${patientDetailsObject.statDetailsObject.patientCount}</h3>
          </div>
          <div class="w3-clear"></div>
          <h4>Patients</h4>
        </div>
      </div>
      <div class="w3-third">
        <div class="w3-container w3-blue w3-padding-16">
          <div class="w3-left"><i class="fa fa-hospital-o w3-xxxlarge"></i></div>
          <div class="w3-right">
            <h3>${patientDetailsObject.statDetailsObject.medCount}</h3>
          </div>
          <div class="w3-clear"></div>
          <h4>Medicines</h4>
        </div>
      </div>
    
      </div>
    </div>
  </div>
  <div id="d2" class="hidden w3-container">
    <br><br>
    <header class="w3-container" style="padding-top:22px">
      <h5><b><i class="fa fa-medkit"></i> Medicines</b></h5>
    </header>
    <form method="" action="" class="w3-container w3-card-4">
      <div class="w3-row-padding">
        <div id="med">
        <c:forEach items="${patientDetailsObject.medDetails}" var="medDetailsObject"> 
          <div class="w3-third w3-group">      
            <input class="w3-input" type="text" value="${medDetailsObject.pillName}" Readonly>
            <label class="w3-label w3-validate">Medicine Name</label>
          </div>
          <div class="w3-third w3-row-padding">      
            <div class="w3-third w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.morning}" Readonly>
              <label class="w3-label w3-validate">Morning</label>
            </div>
            <div class="w3-third w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.afternoon}" Readonly>
              <label class="w3-label w3-validate">Afternoon</label>
            </div>
            <div class="w3-third w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.evening}" Readonly>
              <label class="w3-label w3-validate">Night</label>
            </div>
            
          </div>
            <div class="w3-third w3-row-padding">
            <div class="w3-half w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.medicineId}" Readonly>
              <label class="w3-label w3-validate">Pill Id</label>
            </div>
            <div class="w3-half w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.sensordata}" Readonly>
              <label class="w3-label w3-validate">% Remaining</label>
            </div>
            </div>
         </c:forEach> 
        </div>
      </div>
    </form>
    
        <header class="w3-container" style="padding-top:22px">
      <h5><b><i class="fa fa-medkit"></i> Adherence</b></h5>
    </header>
    <form method="" action="" class="w3-container w3-card-4">
      <div class="w3-row-padding">
        <div id="med">
        <c:forEach items="${patientDetailsObject.adherenceMedDetails}" var="medDetailsObject"> 
          <div class="w3-third w3-group">      
            <input class="w3-input" type="text" value="${medDetailsObject.pillName}" Readonly>
            <label class="w3-label w3-validate">Medicine Name</label>
          </div>
          <div class="w3-third w3-row-padding">      
            <div class="w3-third w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.morning}" Readonly>
              <label class="w3-label w3-validate">Morning</label>
            </div>
            <div class="w3-third w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.afternoon}" Readonly>
              <label class="w3-label w3-validate">Afternoon</label>
            </div>
            <div class="w3-third w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.evening}" Readonly>
              <label class="w3-label w3-validate">Night</label>
            </div>
            
          </div>
            <div class="w3-third w3-row-padding">
            <div class="w3-quater w3-group">      
              <input class="w3-input" type="text" value="${medDetailsObject.medicineId}" Readonly>
              <label class="w3-label w3-validate">Pill Id</label>
            </div>
            </div>
         </c:forEach> 
        </div>
      </div>
    </form>
  </div>
  <div id="d3" class="hidden w3-container">
    <br><br>
    <header class="w3-container" style="padding-top:22px">
      <h5><b><i class="fa fa-cog"></i> Settings</b></h5>
    </header>
    <form method="" action="" class="w3-container w3-card-4">
      <div class="w3-row-padding">
        <div class="w3-half w3-group">      
          <input class="w3-input" type="password" required>
          <label class="w3-label w3-validate">New Password</label>
        </div>
        <div class="w3-half w3-group">      
          <input class="w3-input" type="password" required>
          <label class="w3-label w3-validate">Repeat Password</label>
        </div>
        <div class="w3-group">      
          <input class="w3-hover-text-blue" type="button" value="Change Password" required>
        </div>
      </div>
    </form>
  </div>
  <br><br>

  <!-- Footer -->
  <footer class="w3-container w3-bottom w3-theme-dark" style="height:50px;padding-left:15px;">
    <p>Developed and powered by <b>goIoT</b> Project Team, <a href="https://scu.edu" target="_blank">Santa Clara University</a></p>
  </footer>

  <!-- End page content -->
</div>

<script>

</script>
</body>
</html>