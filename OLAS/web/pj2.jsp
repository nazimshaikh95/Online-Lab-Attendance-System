<%-- 
    Document   : pj2
    Created on : 12 Feb, 2018, 5:37:47 PM
    Author     : Nazimsk
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
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
@media (max-width: 767.98px){#table{
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width:100%;}}

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
        <table id="table" border="1" align="center">
            <tr><th>Batch Enroll</th></tr>     
        </table>
 <table id="table" border="1" align="center">
<tr>
<th><b>Roll No </b></th>
<th><b>Name</b></th>
</tr>
 
        <%
            String rollno[]= new String[100];
            String name[]= new String[100];
            String branch=request.getParameter("branch");
             String sem=request.getParameter("semester");
            String status[]= new String[100];
            String batch = request.getParameter("batch");
           
for(int i=0;i<100;i++){
    
rollno[i]=request.getParameter("rollno"+i);
name[i]=request.getParameter("name"+i);
status[i]=request.getParameter("check"+i);
}
%>
<%try{
   //String stat="p";
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
ResultSet rs = null;
Statement st=null;
st=conn.createStatement();
for(int a=0;a<100;a++){
%>

<%
 if( status[a]!=null)
 {%>
  
 <%
      if(batch.equals("A"))
st.executeUpdate("insert into batcha(branch,semester,rollno,name)values('"+branch+"',"+Integer.parseInt(sem)+","+Integer.parseInt(rollno[a])+",'"+name[a]+"')");
      if(batch.equals("B"))
st.executeUpdate("insert into batchb(branch,semester,rollno,name)values('"+branch+"',"+Integer.parseInt(sem)+","+Integer.parseInt(rollno[a])+",'"+name[a]+"')");
      if(batch.equals("C"))
st.executeUpdate("insert into batchc(branch,semester,rollno,name)values('"+branch+"',"+Integer.parseInt(sem)+","+Integer.parseInt(rollno[a])+",'"+name[a]+"')");
      st.executeUpdate("delete from student where rollno="+Integer.parseInt(rollno[a])+" and branch='"+branch+"'");
 %>
 <tr>
  <td><%=rollno[a]%></td>
  <td><%=name[a]%></td>
  </tr> 
<%}
}
}catch(SQLException e){ 
    System.out.println(e.getMessage()); 
    }
    %>
    
        </table>
    
<div class="form-style-2">

 <form action="batchEnroll.jsp" method="post"> 
    <table id="t02" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
        <tr>
            <td>
                <b>Students are successfully Enrolled in batch <%=batch%>...</b>
            </td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="Next">
            </td>
	</tr>
    </table>	
</form>

</div>
     
</body>
</html>