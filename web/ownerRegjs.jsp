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
			<h1 class="page-title">Owner Register Page Here</h1>
		</div>
	</section>

	<div id="main-wrapper">

		<!-- #main -->
		<section id="main">
			<div class="container clearfix">

				<div class="grid-12">

					<div style="border:  4px solid skyblue; color: skyblue;font-weight: bold;" class="box gray error-404 align-center">
						
        <form action="ownerRegjs" method="POST" id="ex1">
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>Enter website url:</td>
                        <td><input type="text" name="url" value="" /></td>
                    </tr>
                    <tr>
                        <td>Enter website Name:</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Enter Email:</td>
                        <td><input type="text" name="email" id="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Enter password</td>
                        <td><input type="password" name="psw" value="" /></td>
                    </tr>
                    <tr>
                        <td>Active Status</td>
                        <td><input type="text" name="sta" value="" /></td>
                    </tr>
                    <tr>
                        <td><a href="ownerLoginjs.jsp" class="button orange size-180">Login</a></td>
                        <td><input type="submit" value="Register" /></td>
                    </tr>
                </tbody>
            </table>
                       
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
            
            
        </form>
                  
                                     </div>

				</div>

			</div>
		</section>
	</div>

        <%@include  file="inc/footer.jsp" %>

