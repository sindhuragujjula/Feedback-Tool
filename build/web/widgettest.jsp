<%

    String id = request.getParameter("id");
    String h = request.getParameter("h");
    int hh = Integer.parseInt(h);
%>
<h1>Copy The following widget Code </h1>

<textarea rows="6" cols="100">
<script type="text/javascript" src="http://localhost:8080/FeedbackManagement/widget/widget.js"></script> 
<iframe id="myframe" src="http://localhost:8080/FeedbackManagement/sattvaqwidget.jsp?id=<%=id%>" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" style="overflow:visible;height:<%=(hh + 400)%>px; width:100%; display:none"></iframe>
</textarea>
<script type="text/javascript" src="http://localhost:8080/FeedbackManagement/widget/widget.js"></script> 
<iframe id="myframe" src="http://localhost:8080/FeedbackManagement/sattvaqwidget.jsp?id=<%=id%>" scrolling="no" marginwidth="0" marginheight="0" frameborder="0" vspace="0" hspace="0" style="overflow:visible;height:<%=(hh + 400)%>px; width:100%; display:none"></iframe>

