<%-- 
    Document   : displayattend
    Created on : 17 Feb, 2018, 10:19:50 PM
    Author     : Nazimsk
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Attendance Page</title>
	<style>
            body{
		background: #F7F7F7;
	}
		
		table#t01 {
    				width: 480px;    
   				 background-color: #f44336;
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
                @media (max-width: 767.98px){table#t02 {
   			 width: 100%;    
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
				background: red;
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
		background: red;
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

           table#t11 {
    			background-color: #FFFFFF;
			border: 1px solid;
			border-radius: 5px;
			margin-bottom: 10px;
			border: 1px solid #ccc;
			box-shadow: 0 0 5px #4D4D4D;
                        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                        border-collapse: collapse;
                        text-align: center;
                        width: 480;
}
        
			
		
            
#table{
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 65%;
}
@media (max-width: 767.98px){#table{
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}}
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

/* The switch - the box around the slider */
.switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}

/* Hide default HTML checkbox */
.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

/* The slider */
.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color:  #2196F3;
}

input:focus + .slider {
  box-shadow: 0 0 1px #2196F3;
}

input:checked + .slider:before {
  -webkit-transform: 
translateX(26px);
  -ms-transform:  translateX(26px);
  transform: 
translateX(26px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 34px;
}

.slider.round:before {
  border-radius: 50%;
}

	</style>
    </head>
    <body>
        
     <form name=myname method=post action="insertattend.jsp">

<%try{
            String br=request.getParameter("Branch");
            int semes=Integer.parseInt(request.getParameter("semester"));
            String sub=request.getParameter("SubjectName");
            String stfnm=request.getParameter("StaffName");
            String batch = request.getParameter("Batch");
            Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
            ResultSet rs = null;
            Statement st=null;
          %>
            
<table id="table" border="1" align="center">
<tr>
<th><b>Staff Name</b></th>
<th><b>Subject Name</b></th>
<th><b>Branch</b></th>
</tr>
<tr>
    <td>
        <input type="text"  name="staffname" value="<%=stfnm%>"readonly><br>
    </td>
    <td>
        <input type="text"  name="subject" value="<%=sub%>"readonly> 
    </td>
    <td>
        <input type="text"  name="branch" value="<%= br%>"readonly> 
    </td>
</tr>
</table>
<table id="table" border="1" align="center">
<tr>
    <th><b>Semester</b></th>
    <th><b>Batch</b></th>
</tr>
<tr>
    <td>
        <input type="text"  name="semester" value="<%= semes%>"readonly> 
    </td>
    <td>
        <input type="text"  name="batch" value="<%=batch%>"readonly>
    </td>
</tr>
</table>

<table id="table" border="1" align="center">
<tr>
<th><b>Roll No</b></th>
<th><b>Name</b></th>
<th><b>Status</b></th>
</tr>
            
<%

st=conn.createStatement();
if(batch.equals("A"))
rs = st.executeQuery("select * from batcha where branch='"+br+"' and semester="+semes+"");
if(batch.equals("B"))
rs = st.executeQuery("select * from batchb where branch='"+br+"' and semester="+semes+"");
if(batch.equals("C"))
rs = st.executeQuery("select * from batchc where branch='"+br+"' and semester="+semes+"");

int i=0; while(rs.next()){ %>
<tr>
    <td><input type="text" name="rollno<%=i%>" value="<%= rs.getInt("rollno") %>" readonly></td>
    <td><input type="text" name="name<%=i%>" value="<%= rs.getString("name") %>" readonly=""></td>
   
    <td><label class="switch"><input type="checkbox" name="status<%=i%>" value="<%=rs.getString("name")%>" checked><span class="slider round"></span></label></td>
    <%--<td><input type="checkbox" name="status<%=i%>" value="<%= rs.getString("name") %>" checked ></td>--%>
</tr><%
i++;
}
}catch(Exception e){ System.out.println(e.getMessage()); } %>

</table>
<div class="form-style-2">
<table id="t02" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
	<tr>
		<td align="center"><input type="submit" value="Submit">
		<input type="reset" value="Reset"></td>
        </tr>
</table>
</div>
 </form>
    </body>
</html>

