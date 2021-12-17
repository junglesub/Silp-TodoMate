<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Project</title>
</head>
<body>

<div>
	<h1>프로젝트 생성</h1>
	<form action="" method="post">
		<table>
			<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
			<tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
			<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
			<tr><td><a href="list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
		</table>
	</form>
</div>

</body>
</html>