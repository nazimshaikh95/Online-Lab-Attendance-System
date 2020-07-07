<%-- 
    Document   : datatakeattentdance
    Created on : 3 Feb, 2018, 11:41:33 AM
    Author     : Nazimsk
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
            int rollno= Integer.parseInt(request.getParameter("Roll no"));
            String name = request.getParameter("Name");
            String status = request.getParameter("Status");
        
            

               String sname=request.getParameter("Staff Name");
            String subname=request.getParameter("Subject Name");
            String batch=request.getParameter("Batch");
            int demoyear=Integer.parseInt(request.getParameter("demoyear"));
                String branch=request.getParameter("branch");
            
            
            
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
        Statement st = con.createStatement();
       
         st.executeUpdate("insert into attendance1(rollno,name,status)values("+rollno+",'"+name+"','"+status+"')");
        //st.executeUpdate("insert into attendance1(rollno,name,status,staff_name,sub_name,branch) values("+rollno+",'"+name+"','"+status+"','"+sname+"','"+subname+"','"+branch+"')");
               
        out.println("Registered Successfully");
        
        
        }catch(Exception e){
         out.println(e);         
        
        }
        %>
    </body>
</html>



