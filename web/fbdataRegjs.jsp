<%-- 
    Document   : fbdataRegjs
    Created on : Jun 26, 2013, 1:00:36 PM
    Author     : student
--%>

<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="fbdataRegAction1" method="POST">
            <table border="1">
                
                <tbody>
                    <tr>
                        <td>Enter user mail:</td>
                        <td><input type="text" name="umail" value="" /></td>
                    </tr>
                    <tr>
                         <tr>
                        <td>Enter phone number</td>
                        <td><input type="text" name="phne" value="" /></td>
                    </tr>
                   
                        
                        
                        <td>Feedback form ID</td>
                        <td><select name="formid">
                                <option></option>
                                <%
                             Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement","123","123");

String q="select * from feedbackformquestions";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(q);
String ts=null;
while(rs.next())
{
%>
<option><%= rs.getInt(1) %></option>                        
                                <%
}
                             %>
                                
                            </select></td>
                    </tr>
                    <tr>
                        <td>Q1A</td>
                        <td><input type="text" name="q1a" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q2a</td>
                        <td><input type="text" name="q2a" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q3a</td>
                        <td><input type="text" name="q3a" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q4a</td>
                        <td><input type="text" name="q4a" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q5a</td>
                        <td><input type="text" name="q5a" value="" /></td>
                    </tr>
                    <tr>
                        <td>Star Rate</td>
                        <td><input type="text" name="str" value="" /></td>
                    </tr>
                    <tr>
                        <td>Feedback Website url:</td>
                        <td><input type="text" name="url" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Register" /></td>
                    </tr>
                   
                </tbody>
            </table>

        </form>
    </body>
</html>
