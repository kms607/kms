<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");

	// admin / 1234
	if(userid.equals("admin") && userpw.equals("1234")){
		session.setAttribute("userid", userid);
%>
		<script>
			alert('로그인 되었습니다');
			location.href="6_login.jsp";
		</script>
<%		
	}else{
%>
		<script>
			alert('아이디 또는 비밀번호를 확인하세요');
			history.back();
		</script>
<%
	}
%>