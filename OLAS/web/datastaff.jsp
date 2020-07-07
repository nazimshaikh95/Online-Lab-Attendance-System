<%-- 
    Document   : datastaff
    Created on : 31 Jan, 2018, 2:51:34 AM
    Author     : Nazimsk
--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Staff Enrollment</title>
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
                @media (max-width: 767.98px){table#t02 {
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
    width:65%;
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
        <%
           
            String stfnm = request.getParameter("staffname");
            String branch = request.getParameter("branch");
            String contactno = request.getParameter("CNO");
            String staffid= request.getParameter("staffid");
            int subcode= Integer.parseInt(request.getParameter("subject code"));
            int semester=Integer.parseInt(request.getParameter("semester"));
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
        Statement st = con.createStatement();
        ResultSet rs = null;
        Statement st1= con.createStatement();
        rs=st1.executeQuery("select * from staff where subjectcode="+subcode+"");
        if(rs.next())
        {
          %>
          <div class="form-style-2">
        <form action="stfEnroll.jsp" method="post"> 
        <table id="t02" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
	<tr>
            <td>Staff Already Registered...?????</td>
        </tr>
        <tr><td align="center"><input type="submit" value="OK">
            </td></tr>
        </table>
        </form></div>	
        <%  
        }
        else
        {
            st.executeUpdate("insert into staff(staffid,staffname,branch,subjectcode,contactno,semester)values('"+staffid+"','"+stfnm+"','"+branch+"',"+subcode+",'"+contactno+"',"+semester+")");
        %>
        <div class="form-style-2">
        <form action="stfEnroll.jsp" method="post"> 
        <table id="t02" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
	<tr>
            <td>Staff Registered Successfully....</td>
        </tr>
        <tr><td align="center"><input type="submit" value="OK">
            </td></tr>
        </table>	
        </form></div>
        <%
        }}catch(Exception e){
         out.println(e);         
        
        }
        %>
    </body>
</html>

