<%-- 
    Document   : user1
    Created on : 30 Jan, 2018, 1:58:00 AM
    Author     : Nazimsk
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script type="text/javascript" language="javascript">///Script by Abhishek Jain***
        function disableBackButton(){
        window.history.forward();
       }
      
        </script>
    <%      String uid=String.valueOf(session.getAttribute("userid"));//getting uerid attribute && coverting object into String;
            Integer subcode[]=new Integer[100];
            String sub[]=new String[100];
            String stfnm[]=new String[100];
            int i=0,a=0;
            try{
                Connection conn = null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
                ResultSet rs = null;
                ResultSet rs1= null;
                Statement st=null;
                Statement st1=null;
                st=conn.createStatement();
                st1=conn.createStatement();
                rs = st.executeQuery("select * from staff where staffid='"+uid+"'");
                 while(rs.next())
                { 
                   subcode[i]=rs.getInt(4); 
                   stfnm[i]=rs.getString(2);
                   i++;
                }
                 while(i>0)
                 {
                     
                     rs1=st1.executeQuery("select * from subject where subjectcode="+subcode[a]+"");
                     while(rs1.next())
                     {
                     sub[a]=rs1.getString(3);
                     }
                     a++;
                     i--;
                 }
                 }catch(Exception e){ System.out.println(e.getMessage()); } %>  
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
 
img{
    width:150px;
    height:150px;
}
@media (max-width: 767.98px){img{
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
    <%--<script>window.prompt("","Welcome  <%=stfnm[0]%> Sir");
             </script>--%>
              
    <table><tr><td><p class="two"><img src="ssvps.jpg" alt="ssvps" ALIGN="left"/>
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
  <div class="w3-bar w3-black">
    	<a href="home.jsp" class="w3-bar-item w3-button">Home</a>
   	<a href="userReport.jsp" class="w3-bar-item w3-button">Report</a>
	<style="left"></style><a href="logout.jsp" class="w3-bar-item w3-button">Logout</a>
  </div>
</div>
</body>
</html>

<!DOCTYPE HTML>
<html>
<head>
   
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<style>

	body{
		background: #ffffff;
	}
		
		table#t01 {
    				width: 480px;    
   				 background-color: #f5f5f5;
				border: 1px solid; 
				border-radius: 5px;
				margin-bottom: 10px;
				
		
 
		}
		table#t02 {
   			 width: 480px;    
    			background-color: #FFFFFF;
			border: 1px solid;
			border-radius: 5px;
			margin-bottom: 10px;
			border: 1px solid #ccc;
			box-shadow: 0 0 5px #4D4D4D;
                        }
                @media (max-width: 767.98px){ table#t02 {
   			 width:100%;    
    			background-color: #FFFFFF;
			border: 1px solid;
			border-radius: 5px;
			margin-bottom: 10px;
			border: 1px solid #ccc;
			box-shadow: 0 0 5px #4D4D4D;
                        }}        
		table#t03 {
   			 width: 480px;    
    			background-color: #FFFFFF;
			border: 1px solid;
			border-radius: 5px;
			margin-bottom: 10px;
			border: 1px solid #ccc;
			box-shadow: 0 0 5px #4D4D4D;
		}
		.form-style-2 h1{
			background: #43D1AF;
			padding: 25px 0;
			font-size: 140%;
			font-weight: 300;
			text-align: center;
			color: #fff;
			margin: 16px 255px 10px 255px;
			border-radius: 5px;

			box-shadow: 0 0 5px #4D4D4D;
		}
		@media (max-width: 767.98px){.form-style-2 h1{
			background: #43D1AF;
			padding: 25px 0;
			font-size: 140%;
			font-weight: 300;
			text-align:center;
			color: #fff;
			margin: 7px 3px;
			border-radius: 5px;
                        box-shadow: 0 0 5px #4D4D4D;
                        width:100%;
                        
                }}
		
		.form-style-2 input.input-field
		{
				width: 48%;
	
		}
		.form-style-2 .textarea-field
		{
				height:90px;
				width: 75%;
		}
		
		+
		.form-style-2 input.input-field, 
 		.form-style-2 .textarea-field,
 		.form-style-2 .select-field{
				
				
				box-sizing: border-box;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				border: 1px solid #C2C2C2;
				box-shadow: 1px 1px 4px #EBEBEB;
				-moz-box-shadow: 1px 1px 4px #EBEBEB;
				-webkit-box-shadow: 1px 1px 4px #EBEBEB;
				border-radius: 3px;
				-webkit-border-radius: 3px;
				-moz-border-radius: 3px;
				padding: 7px;
				outline: none;

				


		}

		.form-style-2 .input-field:focus, 
		.form-style-2 .textarea-field:focus,  
		.form-style-2 .select-field:focus{
				border: 1px solid #43D1AF;
				box-shadow: 0 0 5px #43D1AF;
		}
		.form-style-2 input[type=submit],
		.form-style-2 input[type=reset],
		.form-style-2 input[type=button]{
				border: none;
				padding: 8px 15px 8px 15px;
				background: #FF8500;
				color: #fff;
				box-shadow: 1px 1px 4px #DADADA;
				-moz-box-shadow: 1px 1px 4px #DADADA;
				-webkit-box-shadow: 1px 1px 4px #DADADA;
				border-radius: 3px;
				-webkit-border-radius: 3px;
				-moz-border-radius: 3px;
		}
		.form-style-2 input[type=submit]:hover,
		.form-style-2 input[type=reset]:hover,
		.form-style-2 input[type=button]:hover{
		background: #EA7B00;
		color: #fff;
		}



		.form-style-6 input[type="email"]
		{
			-webkit-transition: all 0.30s ease-in-out;
			-moz-transition: all 0.30s ease-in-out;
			-ms-transition: all 0.30s ease-in-out;
			-o-transition: all 0.30s ease-in-out;
			outline: none;
			box-sizing: border-box;
				-webkit-box-sizing: border-box;
				-moz-box-sizing: border-box;
				border: 1px solid #C2C2C2;
				box-shadow: 1px 1px 4px #EBEBEB;
				-moz-box-shadow: 1px 1px 4px #EBEBEB;
				-webkit-box-shadow: 1px 1px 4px #EBEBEB;
				border-radius: 3px;
				-webkit-border-radius: 3px;
				-moz-border-radius: 3px;
				padding: 7px;
				outline: none;
				
	}

	.form-style-6 input[type="email"]:focus

	{
		border: 1px solid #43D1AF;
		box-shadow: 0 0 5px #43D1AF;
	}	
    </style>
    <title>Take Attendance</title>
   
</head>
<body>
  

<div class="form-style-2">
<h1>Student Attendance</h1>
<table id="t02"  border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
<form action="displayattend.jsp" method="post">
        <tr>
		<td align="center">Staff ID:</td>
                <td><input type="text" class="input-field" name="StaffID" value="<%=session.getAttribute("userid")%>"></td><%--getting recently login userId--%>
        </tr>
        <tr>
		<td align="center">Staff Name:</td>
                <td><input type="text" class="input-field" name="StaffName" value="<%=stfnm[0]%>"></td>
        <tr>
		<td align="center">Subject Name:</td>
		<td><select class="select-field" name="SubjectName">
  		    <% for(int b=0;b<a;b++)
                        {%>
                        <option  value="<%=sub[b]%>"><%=sub[b]%></option>
                     <%}%>
                    </select></td>
        </tr>
        <tr>
		<td align="center">Branch:</td>
		<td><select class="select-field" name="Branch">
  			<option  value="Automobile">Automobile</option>
  			<option  value="Civil">Civil</option>
  			<option  value="Computer">Computer</option>
    			<option  value="Information Technology">Information Technology</option>
                        <option  value="Electronics">Electronics</option>
			<option  value="Mechanical">Mechanical</option>
                    </select>
                </td>
	</tr>
	<tr>
		<td align="center">Semester:</td>
		<td><select class="select-field" name="semester">
  			<option  value="1">1</option>
                        <option  value="2">2</option>
			<option  value="3">3</option>
                        <option  value="4">4</option>
                        <option  value="5">5</option>
                        <option  value="6">6</option>
		</select></td>
	</tr>
        
        <tr>
		<td align="center">Batch:</td>
		<td><select class="select-field" name="Batch">
  			<option  value="A">A</option>
  			<option  value="B">B</option>
  			<option  value="C">C</option>
                        </select>
        </tr>
    </table>
        
	<table id="t02" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
	<tr>
		<td align="center"><input type="submit" value="Start Attendance">
		</td>
	</tr>
        </table>
</form>
</div>
</body>
</html>
