<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="unfollowUser" method="post">
	
	Enter the ID of the user you want to follow <input type="text" name="userID">
	                                            <input type="hidden" name="followerID" value=<%=session.getAttribute("id")%> >
	<input type="submit" name="unfollow" value="unfollow">	
	
	</form>




</body>
</html>