<%-- 
    Document   : pj4
    Created on : 12 Feb, 2018, 5:43:26 PM
    Author     : Nazimsk
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Report</title>
	<style>
            
            body{
		background: #F7F7F7;
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
                 @media (max-width: 767.98px){table#t02{
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
		
		
		.form-style-2 input.input-field
		{
				width: 48%;
	
		}
		.form-style-2 .textarea-field
		{
				height:90px;
				width: 75%;
		}
		
		
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
        
        
#table{
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    text-align: center;
    width: 100%;
        }
#table1 {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
    background-color: #f44336;
    color: white;
    font-size: 25px;
    text-align: center;
    
        }

#table td, #table th {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: center;
}

#table tr:nth-child(even){background-color: #f2f2f2;}

#table tr:hover {background-color: #ddd;}

#table th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: center;
    background-color: #f44336;
    color: white;
}

	</style>
    </head>
    <body>
        <%!
            float calculate(float a, float b)
            {
                float result=a/b*100;
                return result;
            }
        %>
         <form name=myname method=post action="pj3.jsp">
           <%try{
               int rollno=Integer.parseInt(request.getParameter("Roll no"));
               String sname=request.getParameter("Student");
               String br=request.getParameter("Branch");
               int semes=Integer.parseInt(request.getParameter("semester"));
           %>
           
<table id="table" border="1">
<tr>
<th><b>Roll No</b></th>
<th><b>Student Name</b></th>
<th><b>Branch</b></th>
<th><b>Semester</b></th>
</tr>

<%
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
ResultSet rs = null;
ResultSet rs1 = null;
ResultSet rs2 = null;
ResultSet rs3 = null; //our section//

Statement st=null;
Statement st1=null;
Statement st2=null;
Statement st3=null; //our section//

st=conn.createStatement();
st1=conn.createStatement();
st2=conn.createStatement();
st3=conn.createStatement(); //our section//

rs = st.executeQuery("select * from subject where branch='"+br+"' and semester="+semes+"");

if(semes==1||semes==2)
rs3= st3.executeQuery("select * from attendance1 where (branch ='"+br+"' AND semester="+semes+") AND (rollno="+rollno+" OR name='"+sname+"')");//OUR section//
if(semes==3||semes==4)
rs3= st3.executeQuery("select * from attendance2 where (branch ='"+br+"' AND semester="+semes+") AND (rollno="+rollno+" OR name='"+sname+"')");//OUR section// 
if(semes==5||semes==6)
rs3= st3.executeQuery("select * from attendance3 where (branch ='"+br+"' AND semester="+semes+") AND (rollno="+rollno+" OR name='"+sname+"')");//OUR section//
String naam=null;//Our
int number=0;//section
while(rs3.next())//Our section
{
    number=rs3.getInt(1);
    naam=rs3.getString(2);
    break;
}//Our Section
%>
<tr>                  
    <td><b><%=number%></b></td>
    <td><b><%=naam%></b></td>
    <td><b><%=br%></b></td>
    <td><b><%=semes%></b></td>
    <%--<td>
        <input type="text"  name="Roll No" value="<%=number%>" readonly>
    </td>
    <td>
        <input type="text"  name="Student" value="<%=naam%>" readonly>
    </td>
    <td>
        <input type="text"  name="Branch" value="<%=br%>" readonly>
    </td>
    <td>
        <input type="text"  name="year" value="<%=semes%>" readonly>
    </td>--%>
</tr>
</table>

<table id="table" border="1">
<tr>
<th><b>Subject Name </b></th>
<th><b>Conducted</b></th>
<th><b>Attended</b></th>
<th><b>Percentage</b></th>
</tr>
      
<% int count=0,attend=0,sum=0,total=0;
float per=0.0f;
String sub=null;

while(rs.next()){
    count=0;
    attend=0;
%>
 
<tr>
   <td> <%= rs.getString(3)%></td>
   <% 
  sub=rs.getString(3);
rs1= st1.executeQuery("select * from conducted where (subject='"+sub+"' AND branch ='"+br+"' AND semester="+semes+")");
if(semes==1||semes==2)
rs2= st2.executeQuery("select * from attendance1 where (rollno="+rollno+" OR name='"+sname+"') AND (branch ='"+br+"' AND semester="+semes+" AND sub_name='"+sub+"')");
if(semes==3||semes==4)
rs2= st2.executeQuery("select * from attendance2 where (rollno="+rollno+" OR name='"+sname+"') AND (branch ='"+br+"' AND semester="+semes+" AND sub_name='"+sub+"')");
if(semes==5||semes==6)
rs2= st2.executeQuery("select * from attendance3 where (rollno="+rollno+" OR name='"+sname+"') AND (branch ='"+br+"' AND semester="+semes+" AND sub_name='"+sub+"')");

while(rs1.next())
{
    count++;
}

while(rs2.next())
{
    attend++;
}
sum=sum+count;
total=total+attend;
%>
        <td> <%= count%></td>
        <td> <%= attend%></td>
        <td><%=calculate(attend,count)%></td>
</tr>
<%
}
%>
</table><br>
      
<table id="table1" border="1">
<td>Overall Attendance</td><td><%=calculate(total,sum)%></td>
</table>

<%
}catch(Exception e){  } 
%>  
</form>
<div class="form-style-2">

 <form action="GenerateReport.jsp" method="post"> 
    <table id="t02" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
	<tr>
            <td align="center"><input type="submit" value="Next">
            </td>
	</tr>
    </table>	
</form>

</div>
     
</body>
</html>
 