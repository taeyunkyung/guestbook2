<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>

<%
	List<GuestbookVo> guestList = (List<GuestbookVo>) request.getAttribute("gList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook2/gbc" method="get">
		<input type="hidden" name="action" value="add">
		<table border="1" width="500px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" values=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" values=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" cols="64" rows="5"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>

	<br>

	<%
	for (int i = 0; i < guestList.size(); i++) {
		GuestbookVo vo = guestList.get(i);
	%>

	<table border="1" width="500px">
		<tr>
			<td><%=vo.getNo()%></td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getRegDate()%></td>
			<td><a href="/guestbook2/gbc?action=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=vo.getContent()%></td>
		</tr>
	</table>
	<br>

	<%
	}
	%>
</body>
</html>