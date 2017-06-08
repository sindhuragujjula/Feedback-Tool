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
        <%@include  file="inc/menuafterownerlogin.jsp" %>

	<!-- #page-info -->
	<section id="page-info">
		
		<div class="container clearfix">
			<h1 class="page-title">Create NEw Feedback Widget here</h1>
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
						<form action="formQuestionsActions1" method="POST" id="ex1">
            <table border="0">
                
                <tbody>
                    
                    <tr>
                        <td>Feedback Form Url</td>
                        <td><input type="text" name="url" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" id="email" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>FeedBack form Title</td>
                        <td><input type="text" name="ft" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q1</td>
                        <td><input type="text" name="q1" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q2</td>
                        <td><input type="text" name="q2" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q3</td>
                        <td><input type="text" name="q3" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q4</td>
                        <td><input type="text" name="q4" value="" /></td>
                    </tr>
                    <tr>
                        <td>Q5</td>
                        <td><input type="text" name="q5" value="" /></td>
                    </tr>
                    <tr>
                        <td>status</td>
                        <td><input type="text" name="sta" value="" /></td>
                    </tr>
                     <tr>
                        <td>Star Rate</td>
                        <td><input type="text" name="str" value="" /></td>
                    </tr>
                     <tr>
                        <td>Height of Feedback form</td>
                        <td><input type="text" name="hh" value="" id="hh" /></td>
                    </tr>
                     <tr>
                        <td>Width of Feedback form</td>
                        <td><input type="text" name="ww" value=""  id="ww"/></td>
                    </tr>
                     <tr>
                        <td>Enter Return URL</td>
                        <td><input type="text" name="rurl" value=""  id="ww"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Register" /></td>
                    </tr>
                </tbody>
            </table>

                                   
    <script>
            var metrics = [
  [ 'input', 'presence', 'Cannot be empty' ],
  [ '#integer', 'integer', 'Must be a whole number' ],
    [ '#ww', 'integer', 'Must be a whole number' ],
      [ '#hh', 'integer', 'Must be a whole number' ],
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

        
    