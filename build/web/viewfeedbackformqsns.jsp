<%-- 
    Document   : viewfeedbackformqsns
    Created on : Jun 26, 2013, 12:32:05 PM
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
       <%   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement","123","123");
String o= session.getAttribute("o").toString();
String q="select * from feedbackformquestions where email='"+o+"'";

Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(q);
       %>
       <table border="1">
           <thead>
               <tr>
                   <th>feedback Id</th>
                   <th>Website url</th>
                   <th>email</th>
                   <th>from Title</th>
                   <th>Q1</th>
                   <th>Q2</th>
                   <th>Q3</th>
                   <th>Q4</th>
                   <th>Q5</th>
                   <th>Status</th>
                   <th>Stare Rate</th>
               </tr>
           </thead>
           <tbody>
           <%
           String id=null,url=null,email=null,title=null,q1=null,q2=null,q3=null,q4=null,q5=null,sta=null,str=null;
           if(rs.next()){
               
           id=rs.getString(1);
           url=rs.getString(2);
           email=rs.getString(3);
           title=rs.getString(4);
           q1=rs.getString(5);
           q2=rs.getString(6);
           q3=rs.getString(7);
           q4=rs.getString(8);
           q5=rs.getString(9);
           sta=rs.getString(10);
           str=rs.getString(11);
             %>
             <tr>
                 <td><%=id%></td>
                 <td><%=url%></td>
                 <td><%=email%></td>
                 <td><%=title%></td>
                 <td><%=q1%></td>
                 <td><%=q2%></td>
                 <td><%=q3%></td>
                 <td><%=q4%></td>
                 <td><%=q5%></td>
                 <td><%=sta%></td>
                 <td><%=str%></td>
                 
             </tr>
             <%
           }
%>
           
           <tbody>
    </body>
</html>
