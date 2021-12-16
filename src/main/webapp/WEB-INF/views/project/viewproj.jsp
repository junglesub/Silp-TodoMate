<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Project Page</title>
    <style>
      .sidebar {
        width: 250px;
        height: 100vh;
        padding: 1em;
        background-color: lightgrey;
        float: left;
      }

      .content {
        max-width: 1000px;
        padding: 1em;
      }
      .top,
      .top > * {
        display: flex;
      }

      .top {
        justify-content: space-between;
      }

      .top * {
        align-self: center;
        margin: 0 3px;
      }
    </style>
  </head>
  <body>
    <div class="main">
      <div class="sidebar">
        <h3>Side bar</h3>
        <div class="mb-3">
          <label for="exampleFormControlInput1" class="form-label">검색</label>
          <input
            type="email"
            class="form-control"
            id="exampleFormControlInput1"
            placeholder="name@example.com"
          />
        </div>
        <div class="checkboxs">
          <div class="form-check">
            <input
              class="form-check-input"
              type="checkbox"
              value=""
              id="flexCheckDefault"
            />
            <label class="form-check-label" for="flexCheckDefault">
              Label 1
            </label>
          </div>
          <div class="form-check">
            <input
              class="form-check-input"
              type="checkbox"
              value=""
              id="flexCheckDefault"
            />
            <label class="form-check-label" for="flexCheckDefault">
              Label 2
            </label>
          </div>
          <div class="form-check">
            <input
              class="form-check-input"
              type="checkbox"
              value=""
              id="flexCheckDefault"
            />
            <label class="form-check-label" for="flexCheckDefault">
              Finished
            </label>
          </div>
          <div class="form-check">
            <input
              class="form-check-input"
              type="checkbox"
              value=""
              id="flexCheckDefault"
            />
            <label class="form-check-label" for="flexCheckDefault">
              Not Finished
            </label>
          </div>
          <div class="form-check">
            <input
              class="form-check-input"
              type="checkbox"
              value=""
              id="flexCheckDefault"
            />
            <label class="form-check-label" for="flexCheckDefault">
              김한동
            </label>
          </div>
          <div class="form-check">
            <input
              class="form-check-input"
              type="checkbox"
              value=""
              id="flexCheckDefault"
            />
            <label class="form-check-label" for="flexCheckDefault">
              유정섭
            </label>
          </div>
        </div>
      </div>

      <div class="content">
        <div class="top">
          <div class="top-left">
            <h1>프로젝트 이름</h1>
            <button type="button" class="btn btn-outline-secondary">
              설정
            </button>
            <button type="button" class="btn btn-outline-danger">삭제</button>
          </div>
          <div class="top-right">
            <h4>김한동 님</h4>
            <button type="button" class="btn btn-secondary">로그아웃</button>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
