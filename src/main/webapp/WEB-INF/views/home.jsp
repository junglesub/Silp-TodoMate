<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ page
session="false" %>
<html>
  <head>
    <!-- CSS only -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- JavaScript Bundle with Popper -->
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>Todo Mate</title>

    <style>
      .inputs > * {
        margin-bottom: 0.5em;
      }
      .center-text {
        text-align: center;
        font-weight: bold;
      }
      .form-control::placeholder {
        color: #c6c6c6;
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
  </head>
  <body>
    <div class="position-absolute top-50 start-50 translate-middle">
      <h1 class="center-text">Todo Mate</h1>
      <form action="login" method="post">
        <div class="inputs">
          <input
            class="form-control"
            id="name"
            name="name"
            placeholder="이름"
            autocomplete="off"
          />
          <input
            class="form-control"
            name="projectcode"
            id="projectcode"
            placeholder="프로젝트 코드"
            autocomplete="off"
          />
        </div>
        <a href="./newproj" role="button" class="btn btn-secondary"
          >프로젝트 생성</a
        >
        <button
          type="submit"
          id="enterproj"
          class="btn btn-primary"
          onclick="submit(event)"
        >
          프로젝트 입장
        </button>
      </form>
    </div>

    <script>
      function submit(event) {
        const code = document.getElementById("project-code").value;
        if ((code || "").length != 5) return alert("Enter a correct code");
        window.location.href = "./proj/" + code;
      }
    </script>
  </body>
</html>
