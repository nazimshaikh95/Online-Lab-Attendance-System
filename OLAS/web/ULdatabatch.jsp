<%-- 
    Document   : databatch
    Created on : 1 Feb, 2018, 9:28:56 PM
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
             
                int attend=0;
            String branch = request.getParameter("branch");
            int semester=Integer.parseInt(request.getParameter("semester"));
            int rollno=Integer.parseInt(request.getParameter("RollNo"));
            String name = request.getParameter("StudentName");
            String batch = request.getParameter("batch");
           
              
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
        Statement st = con.createStatement();
       if(batch.equals("A"))
        st.executeUpdate("insert into batcha(branch,semester,rollno,name)values('"+branch+"',"+semester+","+rollno+",'"+name+"')");
       else if(batch.equals("B"))
        st.executeUpdate("insert into batchb(branch,semester,rollno,name)values('"+branch+"',"+semester+","+rollno+",'"+name+"')");
       else if(batch.equals("C"))
        st.executeUpdate("insert into batchc(branch,semester,rollno,name)values('"+branch+"',"+semester+","+rollno+",'"+name+"')");
        
        out.println("Registered Successfully");
        
        
        }catch(Exception e){
         out.println(e);         
        
        }
        %>
    </body>
</html>

