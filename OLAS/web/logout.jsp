<%-- 
    Document   : logoutjsp
    Created on : 14 Feb, 2018, 6:29:16 PM
    Author     : Nazimsk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        <%
            session.invalidate();
            response.setHeader("Cache-Control","no-cache");
            response.setHeader("Cache-Control","no-store");
            response.setDateHeader("Expires",0);
            response.sendRedirect("home.jsp");
        %>
        
    </body>
</html>
