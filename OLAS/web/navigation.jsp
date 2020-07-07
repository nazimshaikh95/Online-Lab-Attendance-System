<%-- 
    Document   : navigation
    Created on : Jan 19, 2018, 10:44:25 AM
    Author     : Nazimsk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<title>SSVPS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="all.css">
<head>
    <script type="text/javascript" language="javascript">
        function disableBackButton(){
            window.history.forward();
        }
       
        </script>
<style>
p.two {

    border-width:low;
    background-color:aqua;
    border-align: center;
    text-color:#FFFFFF;
    font-size: 35px;
    font-style:oblique;
}
 @media (max-width: 767.98px){p.two {

    border-width:low;
    background-color:aqua;
    border-align: center;
    text-color:#FFFFFF;
    font-size: 20px;
    font-style:oblique;
}}
 
img#t04{
    width:150px;
    height:150px;
}
@media (max-width: 767.98px){img#t04{
    width:130px;
    height:130px;
}}
table{
    width:100%;
    border: 5px solid;
    background-color:aqua;
    }
</style>
</head>
<body onload="disableBackButton();" style=background-color:lightblue>
    <table><tr><td><p class="two"><img id="t04" src="ssvps.jpg" alt="ssvps" ALIGN="left"/>
SSVPS's Shri Shivaji Vidya 
Prasarak Sanstha's Bapusaheb
Shivajirao Deore College of Engineering
,Dhule
+91(0)2562272229,272976,272713<br CLEAR="left"/></p></td></tr></table>
</body>
</html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="nazim.css">
<body>

<div class="w3-container">
  <h2></h2>
  <p></p>

  <div class="w3-bar w3-black">
    <a href="home.jsp" class="w3-bar-item w3-button">Home</a>
    
    <div class="w3-dropdown-hover">
      <button class="w3-button">Enrollment</button>
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
        <a href="stdEnroll.jsp" class="w3-bar-item w3-button">Student</a>
        <a href="stfEnroll.jsp" class="w3-bar-item w3-button">Staff</a>
        <a href="subEnroll.jsp" class="w3-bar-item w3-button">Subject</a>
  <a href="batchEnroll.jsp" class="w3-bar-item w3-button">Batch</a>
    </div>
    </div>
	
	<a href="GenerateReport.jsp" class="w3-bar-item w3-button">Report</a>
	<style="left"></style><a href="logout.jsp" class="w3-bar-item w3-button">Logout</a>
  </div>
</div>
</body>
</html>

<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
<body>

<div class="w3-content w3-section" style="max-width:2000px">
  <img class="mySlides" src="new-banner3.jpg" style="width:100%">
  <img class="mySlides" src="computer-lab.jpg" style="width:100%">
  <img class="mySlides" src="index1.jpg" style="width:100%">
  <img class="mySlides" src="index2.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000); // Change image every 2 seconds
}
</script>

</body>
</html>

