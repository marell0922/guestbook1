<%@page import="com.douzon.guestbook.vo.GuestbookVo"%>
<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<% int no=Integer.parseInt(request.getParameter("no"));
	String pw=request.getParameter("password");
	
	GuestbookDao dao=new GuestbookDao();
	GuestbookVo vo=dao.select(no);
	
	if(vo.getPasswd().equals(pw)){
		if(dao.delete(no)){
			%>
			<script type="text/javascript">
			alert("삭제되었습니다.");
			location.href="/guestbook1";
		</script>
			<%
		}
	}else{
		%>
		<script type="text/javascript">
		alert("잘못된 비밀번호입니다.");
		history.go(-1);
		</script>
		<%
	}
	%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>