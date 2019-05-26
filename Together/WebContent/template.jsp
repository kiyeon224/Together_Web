<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Together</title>
<link rel="stylesheet" type="text/css" href="css/template.css">
</head>
<body>

<%
	String content = request.getParameter("Content");
%>

<nav>
	<jsp:include page="nav.jsp" flush="false"></jsp:include>
</nav>

<header>
	<jsp:include page="header.jsp" flush="false"></jsp:include>
</header>

<section>
	<jsp:include page="<%= content %>" flush="false"></jsp:include>
</section>

<footer>
	<jsp:include page="footer.jsp" flush="false"></jsp:include>
</footer>

</body>
</html>