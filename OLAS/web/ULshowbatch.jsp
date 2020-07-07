<%-- 
    Document   : showbatch
    Created on : 2 Feb, 2018, 10:59:52 AM
    Author     : Abhishek 
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
  	<style>

	body{
		background: #F7F7F7
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
                        
                        text-align: center;                       
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
                table#t04 {
   			 width: 480px;    
    			background-color: #FFFFFF;
			border: 1px solid;
			border-radius: 5px;
			margin-bottom: 10px;
			border: 1px solid #ccc;
			box-shadow: 0 0 5px #4D4D4D;
                        text-color:blue;
                        font-style: italic;
                        text-align: left;                       
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






  	</style>
    </head>
    <body>
        
        
        <%
           
            String branch=request.getParameter("branch");
              int semester=Integer.parseInt(request.getParameter("semester"));
            
            ResultSet rs=null;
           
            
             
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
        Statement st = con.createStatement();
           
           
             rs = st.executeQuery("select * from student where branch='"+branch+"' and semester="+semester+"");
           
          
        %>
            
          
            <div class="form-style-2">
            <h1>Student List </h1>
           
            
            <table id="t04"  border='0' width='480px' cellpadding='10' cellspacing='5' 
align='center'>
 <form action="databatch.jsp" method="post">
                 
	
                
                
                   
            <tr>   
                <td>   
                    Branch:<%out.println(branch);%><br>
                    Semester:<%out.println(semester);%><br>
                   
                <%Date today= new Date();%>
                       <% SimpleDateFormat DATE_FORMAT=new SimpleDateFormat("dd-MM-yyyy");
                       String ddMMyyyyToday=DATE_FORMAT.format(today);%>
                       Time:  <%=today%><br>
                           Date:  <%=ddMMyyyyToday%>
                      
                </td>       
            </tr>      
            

            
            </table>
            
            
            
                <table id="t02"  border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
                <tr>
                    <th>Roll no</th>
                    <th>Name</th>
                    <th>Status</th>
                    
                </tr>
               
              <% 
                
            while(rs.next())
            {
                   
            %>
            
                <tr>
                    <td><%=rs.getInt("rollno") %></td>
                    <td><%=rs.getString("name")%></td>
                    <td><input type="checkbox" name="status"></td>
                </tr>
                <%}%>    
            
                
                </table>
                 <table id="t03" border='0' width='480px' cellpadding='10' cellspacing='5' align='center'>
                     <tr>
                         <td align="center">Batch:</td>
		<td><select class="select-field" name="batch">
  			<option  value="A">A</option>
  			<option  value="B">B</option>
  			<option  value="C">C</option>

		</select></td>
                     </tr>
        	<tr>
            
		
                    <td align="center"><input type="submit" value="Submit"></td>
                <td> <input type="reset" value="Reset"></td>

		
	</tr>

	
                 </table>
</form>
    </body>
</html>
        