<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<style>
		.inputs > *{
			margin-bottom: 0.5em;
		}
		.center-text {
			text-align: center;
			font-weight: bold;
		}
		.form-control::placeholder {
			color: #C6C6C6;
		}
		.btn-secondary {
			border: 1px solid #000080;
			background-color: white;
			color: #000080;
			cursor: pointer;
		}
		.btn-secondary:hover {
			border: 1px solid grey;
			background-color: grey;
			color: white;
		}
		.btn-primary {
			border: 1px solid #000080;
			background-color: #000080;
		}
		.btn-primary:hover {
			border: 1px solid grey;
			background-color: grey;
			color: white;
		}	
	</style>

<meta charset="UTF-8">
<title>New Project</title>
</head>
<body>

<div class="position-absolute top-50 start-50 translate-middle">
	<h1 class="center-text">New project</h1>
	<form action="" method="post">
		<div class="inputs">
			<input class="form-control" id="name" placeholder="관리자 이름" autocomplete="off" />
			<input class="form-control" id="project-code" placeholder="프로젝트 이름" />
			<a href="./" role="button" class="btn btn-secondary">생성 취소</a>
			<input type="submit" class="btn btn-primary" value="프로젝트 생성"/>
		</div>
	</form>
</div>

</body>
</html>