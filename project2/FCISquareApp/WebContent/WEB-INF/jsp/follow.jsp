<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="followUser" method="post">
	
	Enter the ID of the user you want to follow <input type="text" name="userID">
	                                            <input type="hidden" name="followerID" value=<%=session.getAttribute("id")%> >
	<input type="submit" name="follow" value="follow">	
	
	</form>

</body>
</html>