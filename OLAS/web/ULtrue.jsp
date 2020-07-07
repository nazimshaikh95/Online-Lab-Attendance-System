<%-- 
    Document   : true
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
        <title>JSP Page</title>
	<style>
            body{
		background: #ffffff;
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
        
     <form name=myname method=post action="insertattend.jsp">

<%try{

            String br=request.getParameter("Branch");
            int semes=Integer.parseInt(request.getParameter("semester"));
            String sname=request.getParameter("Staff Name");
            String sub=request.getParameter("Subject Name");
            String subcode=request.getParameter("Subject Code");
            String batch = request.getParameter("Batch");
%>
            
<table id="table" border="1" align="center">
<tr>
<th><b>Staff Name</b></th>
<th><b>Subject Name</b></th>

<th><b>Branch</b></th>
<th><b>Semester</b></th>
<th><b>Batch</b></th>
</tr>
<tr>
    <td>
        <input type="text"  name="staffname" value="<%=sname%>"readonly><br>
         
    </td>



    <td>
       
        <input type="text"  name="subject" value="<%=sub%>"readonly> 
    </td>


    <td>
            <input type="text"  name="branch" value="<%= br%>"readonly> 
    </td>


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
            //out.println(br);
            //out.println(sem);
            //out.println(sub);
           // out.println(test);
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();
if(batch.equals("A"))
rs = st.executeQuery("select * from batcha where branch='"+br+"' and semester="+semes+"");
if(batch.equals("B"))
rs = st.executeQuery("select * from batchb where branch='"+br+"' and semester="+semes+"");
if(batch.equals("C"))
rs = st.executeQuery("select * from batchc where branch='"+br+"' and semester="+semes+"");
//if(semes==3 || semes==4)
//rs = st.executeQuery("select * from registration2");
//if(semes==5 || semes==6)
//rs = st.executeQuery("select * from registration3");
int i=0; while(rs.next()){ %>
<tr>
    <td><input type="text" name="rollno<%=i%>" value="<%= rs.getInt("rollno") %>" readonly></td>
    <td><input type="text" name="name<%=i%>" value="<%= rs.getString("name") %>" readonly=""></td>
   
    
<td><input type="checkbox" name="status<%=i%>" value='checked' ></td>
</tr><%
i++;
}
}catch(Exception e){ System.out.println(e.getMessage()); } %>

 </table>
<div class="form-style-2">
<table id="t03" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
		
	
	<tr>
		<td align="center"><input type="submit" value="Submit">
		<input type="reset" value="Reset"></td>
		
	</tr>

	
</table>
</div>
 </form>
    </body>
</html>

