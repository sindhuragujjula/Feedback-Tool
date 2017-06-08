<%@include file="nodinclude.jsp"  %>

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
        <%@include  file="inc/menubeforelogin.jsp" %>

	<!-- #page-info -->
	<section id="page-info">
		
		<div class="container clearfix">
			<h1 class="page-title">admin Login Page</h1>
		</div>
	</section>

	<div id="main-wrapper">

		<!-- #main -->
		<section id="main">
			<div class="container clearfix">

				<div class="grid-12">

					<div style="border:  4px solid skyblue; color: skyblue;font-weight: bold;" class="box gray error-404 align-center">
						        <%
          if(request.getAttribute("remsg")!=null)
{
    String emsg=request.getAttribute("remsg").toString();
    %>
    <spam style="font-size: 20px;">            
                                            <%
    out.print(emsg);
   %>
                                            
    </spam>
        <%
}  %>
<form action="adminLoginAction1" method="POST">
            Enter Admin ID:<input type="text" name="aid" value="" /><br>
            Enter admin Password:<input type="password" name="psw" value="" /><br>
            <input type="submit" value="Login" />
        </form>
 <script>
            var metrics = [
  [ 'input', 'presence', 'Cannot be empty' ],
  [ '#integer', 'integer', 'Must be a whole number' ],
   [ '#inte', 'integer', 'Must be a whole number' ],
[ '#email', 'email', 'Must be a valid email' ],
[ '#bnum', 'between-num:2:4', 'Type in a number between 2 and 4' ],
[ '#char', 'exact-length:4', 'Must be exactly 4 characters' ],
[ '#max', 'max-length:4', 'No longer than 4 characters please' ],
[ '#min', 'min-length:4', 'At least 4 characters please' ],

 [ '.ex3a', 'exact:foo', 'I told you to type "foo"!' ],
  [ '#ex3select', 'presence', 'Pick something' ],
  [ '#ex3select1', 'presence', 'Pick something' ],
  [ '#ex3select', 'not:3', 'I told you not to pick this one!' ]
  
  
  
];
var options = {
  'groupClass' : 'warning'
};
$("#ex1").nod( metrics ,options);



        </script>                           
                                                
                                                
                                                
                                                
                                                
                                     </div>

				</div>

			</div>
		</section>
	</div>

        <%@include  file="inc/footer.jsp" %>

        
    
