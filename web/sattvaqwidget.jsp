<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <%@include file="nodinclude.jsp"  %>

        <%@include  file="inc/headbeforelogin.jsp" %>
    </head>

    <body>
        <%

            String id = request.getParameter("id");
            if (request.getAttribute("rid") != null) {
                id = request.getAttribute("rid").toString();
            }



        %>

        <%   Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement", "123", "123");
            String o = session.getAttribute("o").toString();
            String q = "select * from feedbackformquestions where feedbackformid=" + id + "";

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(q);


        %>

        <%
            String url = null, email = null, title = null, q1 = null, q2 = null, q3 = null, q4 = null, q5 = null, sta = null, str = null;
            String w = null, h = null, rurl = null;
            if (rs.next()) {

                id = rs.getString(1);
                url = rs.getString(2);
                email = rs.getString(3);
                title = rs.getString(4);
                q1 = rs.getString(5);
                q2 = rs.getString(6);
                q3 = rs.getString(7);
                q4 = rs.getString(8);
                q5 = rs.getString(9);
                sta = rs.getString(10);
                str = rs.getString(11);
                h = rs.getString(12);
                w = rs.getString(13);
                rurl = rs.getString(14);
            }
        %>

        <div style="width:<%=w%>px;float:left;margin:3px;  ">



            <form action="http://localhost:8080/FeedbackManagement/fbdataRegAction">

                <div style="border: 3px solid skyblue;">

                    <h3 style="padding: 4px;background:skyblue;border-bottom:1px solid #d9e6f0;color:#375b91;margin-top: -1px;font-size:14px;"><b><%=title%> <b></h3>
                                <div style="padding:10px; "	>
                                    <%
                                        if (request.getAttribute("rmsg") != null) {
                                            String m = request.getAttribute("rmsg").toString();
                                            out.print(m + "<br>");
                                        }
                                    %>
                                    Enter Your Email<br>
                                    <input type="hidden" name="id"  value="<%=id%>" />
                                    <input type="hidden" name="oe"  value="<%=email%>" />
                                    <input type="hidden" name="rurl"  value="<%=rurl%>" />
                                    <input type="text" name="e"  />
                                    <hr>
                                    Enter Your Phone<br>
                                    <input type="text" name="phn"  />
                                    <hr>
                                    <%=q1%><br>
                                    <input type="text" name="q1"  />
                                    <hr>
                                    <%=q2%><br>
                                    <input type="text" name="q2"  />
                                    <hr>
                                    <%=q3%><br>
                                    <input type="text" name="q3"  />
                                    <hr>
                                    <%=q4%><br>
                                    <input type="text" name="q4"  />
                                    <hr>
                                    <%=q5%><br>
                                    <input type="text" name="q5"  />
                                    <hr>
                                    Select Your Rate <br>
                                    <select name="st">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                    <hr>

                                    <input type="submit" value="Submit Feedback"/>
                                    <hr>

                                </div>














                                <h3 style="bottom:0px;font-size:14px;">Powered BY SattvaQ</h3>
                                </div>

                                </form>
                                </div>


                                </body>
                                </html>
