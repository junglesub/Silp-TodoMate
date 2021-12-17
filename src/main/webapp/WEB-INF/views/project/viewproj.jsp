<%@page import="io.github.junglesub.project.ProjectVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ProjectVO p = (ProjectVO) request.getAttribute("p");
%>
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
        padding: 1em;
        background-color: lightgrey;
      }

      .content {
        flex-grow: 1;
        padding: 1em;
        overflow-y: scroll;
        height: 100vh;
      }

      .content > * {
        max-width: 1000px;
        margin: auto;
      }

      .main,
      .top,
      .top > *,
      .extra-info,
      .objective {
        display: flex;
      }

      .top,
      .objective {
        justify-content: space-between;
      }

      .top *,
      .extra-info > * {
        align-self: center;
        margin: 0 3px;
      }

      .objective {
        border: 2.5px solid black;
        padding: 0.5em 1em;
        margin: 1em 1em 0.5em 1em;
        border-radius: 15px;
      }
      .objective-name {
        font-weight: bold;
        font-size: 1.5em;
      }
      .extra-info {
        color: #999;
      }
      .holdername {
        border: 1px solid #999;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        text-align: center;
      }
      .key-results {
        margin: 0 1em;
      }
      .key-results .list-group-flush {
        padding-left: 0;
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
            <h1><%=p.getTitle() %></h1>
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
        <div class="body">
          <div class="entries">
            <div class="entry-item">
              <div class="objective">
                <div class="objective-name">오브젝티브 이름</div>
                <div class="extra-info">
                  <div class="holdername">김</div>
                  <div class="badge text-dark" style="background-color: aqua">
                    Label1
                  </div>
                  <div class="completed">2/4</div>
                </div>
              </div>
              <div class="key-results">
                <ul class="list-group-flush">
                  <li class="list-group-item">
                    <input
                      class="form-check-input me-1"
                      type="checkbox"
                      value=""
                      aria-label="..."
                    />
                    First checkbox
                  </li>
                  <li class="list-group-item">
                    <input
                      class="form-check-input me-1"
                      type="checkbox"
                      value=""
                      aria-label="..."
                    />
                    Second checkbox
                  </li>
                  <li class="list-group-item">
                    <input
                      class="form-check-input me-1"
                      type="checkbox"
                      value=""
                      aria-label="..."
                    />
                    Third checkbox
                  </li>
                  <li class="list-group-item">
                    <input
                      class="form-check-input me-1"
                      type="checkbox"
                      value=""
                      aria-label="..."
                    />
                    Fourth checkbox
                  </li>
                  <li class="list-group-item">
                    <input
                      class="form-check-input me-1"
                      type="checkbox"
                      value=""
                      aria-label="..."
                    />
                    Fifth checkbox
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

