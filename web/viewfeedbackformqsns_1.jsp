<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@include  file="inc/headbeforelogin.jsp" %>

</head>
<body>

    <!-- #infobar -->
    <section id="infobar">
        <div class="container clearfix">
            <p class="grid-12 align-center">This is a Product From SattvaQ</p>
        </div>
    </section>

    <!-- #infobar slide button -->
    <div class="container">
        <a href="#" id="slide-toggle">+</a>
    </div>

    <!-- Header -->
    <%@include  file="inc/menuafterownerlogin.jsp" %>

    <!-- #page-info -->
    <section id="page-info">

        <div class="container clearfix">
            <h1 class="page-title">List Of Feedback Forms</h1>
        </div>
    </section>
    <%   Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement", "123", "123");
        String o = session.getAttribute("o").toString();
        //out.print(o);
        String q = "select * from feedbackformquestions where email='" + o + "'";

        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(q);
    %>

    <div id="main-wrapper">

        <!-- #main -->
        <section id="main">
            <div class="container clearfix">


                <div class="grid-6">
                    <%
                        String id = null, url = null, email = null, title = null, q1 = null, q2 = null, q3 = null, q4 = null, q5 = null, sta = null, str = null;
                        while (rs.next()) {

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
                    %>


                    <!-- Message box gray -->
                    <div class="box blue radius">
                        <h4><%=title%></h4>
                        <a href="widgettest.jsp?id=<%=id%>&h=<%=rs.getString(12)%>" class="button orange size-180">Create FeedBack Form</a>
                    </div>

                    <%
                        }
                    %>




                </div>


            </div>
        </section>

    </div>
    <%@include  file="inc/footer.jsp" %>
