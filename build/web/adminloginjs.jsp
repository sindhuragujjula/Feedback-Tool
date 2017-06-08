<%-- 
    Document   : adminloginjs
    Created on : Jun 26, 2013, 11:36:55 AM
    Author     : student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <form action="adminLoginAction1" method="POST">
            Enter Admin ID:<input type="text" name="aid" value="" /><br>
            Enter admin Password:<input type="password" name="psw" value="" /><br>
            <input type="submit" value="Login" />
        </form>
    </body>
</html>
