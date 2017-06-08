<%@page import="java.sql.ResultSet"%>
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
			<h1 class="page-title">Feedback Details Given BY users</h1>
		</div>
	</section>

	<div id="main-wrapper">

		<!-- #main -->
		<section id="main">
			<div class="container clearfix">

				<div class="grid-12">
        <%
            
         Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackmanagement","123","123");
String o=session.getAttribute("o").toString();
String q="select * from feedbackdata where useremail!='"+o+"'";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(q);               
        %>
                          
            <table border="2">
           <thead>
               <tr>
                   <th>ID</th>
                   <th>User email</th>
                   <th>Phone Number</th>
                   <th>FeedBack form Id</th>
                   <th>Q1</th>
                   <th>Q2</th>
                   <th>Q3</th>
                   <th>Q4</th>
                   <th>Q5</th>
                   <th>Star Rate</th>
                   <th>data of feedback</th>
                 
               </tr>
           </thead>
           <tbody>
           <%
           String id=null,umail=null,phne=null,fdbkid=null,q1=null,q2=null,q3=null,q4=null,q5=null,rate=null,data=null,url=null,email=null;
           while(rs.next()){
               
           id=rs.getString(1);
           umail=rs.getString(13);
           phne=rs.getString(3);
           fdbkid=rs.getString(4);
           q1=rs.getString(5);
           q2=rs.getString(6);
           q3=rs.getString(7);
           q4=rs.getString(8);
           q5=rs.getString(9);
           rate=rs.getString(10);
           data=rs.getString(11);
           url=rs.getString(12);
           email=rs.getString(13);
                  
           
             %>
             <tr>
                 <td><%=id%></td>
                 <td><%=umail%></td>
                 <td><%=phne%></td>
                 <td><%=fdbkid%></td>
                 <td><%=q1%></td>
                 <td><%=q2%></td>
                 <td><%=q3%></td>
                 <td><%=q4%></td>
                 <td><%=q5%></td>
                 <td><%=rate%></td>
                 <td><%=data%></td>
               
              
               
                 
             </tr>
             <%
           }
%>
            
            
        </table>
     </div>

			</div>
		</section>
	</div>

        <%@include  file="inc/footer.jsp" %>