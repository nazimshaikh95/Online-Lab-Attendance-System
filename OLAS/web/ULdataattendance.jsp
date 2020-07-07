<%-- 
    Document   : dataattendance
    Created on : 1 Feb, 2018, 1:09:16 PM
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
        <title>JSP Page</title>
    </head>
    <body>
  <%           
            String sname=request.getParameter("Staff Name");
            String subname=request.getParameter("Subject Name");
            String batch=request.getParameter("Batch");
            int demoyear=Integer.parseInt(request.getParameter("demoyear"));
            
            ResultSet rs=null;
            ResultSet rs1=null;
            ResultSet rs2=null;
            
            // int semester=Integer.parseInt(request.getParameter("semester"))
            
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","12345");
        Statement st = con.createStatement();
        
       
            
            
             rs = st.executeQuery("select * from student where demoyear = "+demoyear+" and batch='"+batch+"' ");
               %>
        
        <script>
function myFunction() {
            int l=0;
            while(rs.next())
            {
                int rollno[l]=push(rs.getInt(0));
                String name[l]=push(rs.getName(1));
                l++;
            }
            var chk_arr =  document.getElementsByName("status[]");
            var chklength = chk_arr.length;
            for(k=0;k< chklength;k++)
            {
                try{
                    st.executeUpdate("insert into attendance1(rollno,name,status,staff_name,sub_name,branch) values("+rollno[k]+",'"+name[k]+"','"+chk_arr[k]+"','"+sname+"','"+subname+"','"+branch+"')");
                }
            }
            catch(Exception e){
         out.println(e);         
        }
            out.println("Attendance Added");
}
</script>    
        
          

    </body>
</html>

