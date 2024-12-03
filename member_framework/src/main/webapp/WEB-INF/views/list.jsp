<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List</title>
</head>
<script>
	const deleteMember = (id) => {
		console.log(id);
		location.href = "/member/delte?id="+ id;
	}
</script>
<body>
	<table>
		<tr>
			<th>id</th>
			<th>email</th>
			<th>password</th>
			<th>name</th>
			<th>age</th>
			<th>mobile</th>
			<th>조회</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${memberList}" var="member">
			<tr>
				<td>${member.id}</td>
				<td>
					<a href="/member?id=${member.id}">${member.memberEmail}</a>    <!-- id 내부 고유 번호 검색해놓고 memberEmail 로 아이디 보여줌 --> 
				</td>
				<td>${member.memberPassword}</td>
				<td>${member.memberName}</td>
				<td>${member.memberAge}</td>
				<td>${member.memberMobile}</td>
				<td>
					<a href="/member?id=${member.id}">조회</a>
				</td>
				<td>
					<button onclick="deleteMember('${member.id}')">삭제</button>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>