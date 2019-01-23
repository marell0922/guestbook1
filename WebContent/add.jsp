<%@page import="com.douzon.guestbook.vo.GuestbookVo"%>
<%@page import="com.douzon.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% 
String name=request.getParameter("name");
String passwd=request.getParameter("password");
String message=request.getParameter("message");
GuestbookVo vo=new GuestbookVo();
vo.setName(name);
vo.setPasswd(passwd);
vo.setMessage(message);

GuestbookDao dao=new GuestbookDao();
if(dao.insert(vo)){ %>
	<script type="text/javascript">
	alert("정상 등록.");
	location.href="/guestbook1";
	</script>
<%
	//response.sendRedirect("/guestbook1");
}else {
	%>
	<script type="text/javascript">
	alert("등록에 실패하였습니다. 다시 시도해주세요.").;
	history.go(-1);
	</script>
	<% 
}
%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
this is add.jsp
</body>
</html>