<html>
<body>
<p>
<b>You are browsing this site with:</b>
<%Response.Write(Request.ServerVariables("http_user_agent"))%>
</p>
<p>
<b>Your IP address is:</b>
<%Response.Write(Request.ServerVariables("remote_addr"))%>
</p>
<p>
<b>The DNS lookup of the IP address is:</b>
<%Response.Write(Request.ServerVariables("remote_host"))%>
</p>
<p>
<b>The method used to call the page:</b>
<%Response.Write(Request.ServerVariables("request_method"))%>
</p>
<p>
<b>The server's domain name:</b>
<%Response.Write(Request.ServerVariables("server_name"))%>
</p>
<p>
<b>The server's port:</b>
<%Response.Write(Request.ServerVariables("server_port"))%>
</p>
<b>Your Authentication type:</b>
<%Response.Write(Request.ServerVariables("auth_type"))%>
</p>
<b>Your Application Path:</b>
<%Response.Write(Request.ServerVariables("APPL_PHYSICAL_PATH"))%>
</p>
</p>
<b>Authorized User from client side:</b>
<%Response.Write(Request.ServerVariables("AUTH_USER"))%>
</p>
</p>
<b>Name of the web server:</b>
<%Response.Write(Request.ServerVariables("HTTP_HOST"))%>
</p>
</body>
</html> 