<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@page
import="java.util.List"%> <%@page
import="io.github.junglesub.objective.ObjectiveVO"%> <%@page
import="io.github.junglesub.project.ProjectVO"%> <%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <% ProjectVO p =
(ProjectVO) request.getAttribute("p"); %>
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
    <title><%=p.getTitle() %> :: TodoMate</title>
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
      
      .top {
      	margin-bottom: 1.5em;
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
      .smaller-inp {
      	max-width: 130px;
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
            <a hred><button type="button" class="btn btn-outline-secondary">
              설정
            </button></a>
            <a href="./${ p.getProjectId() }/delProj"><button type="button" class="btn btn-outline-danger">삭제</button></a>
          </div>
          <div class="top-right">
            <h4>김한동 님</h4>
            <button type="button" class="btn btn-secondary">로그아웃</button>
          </div>
        </div>
        <div class="body">
          <div class="entries">
	          <div class="entry-item">
	              <div class="">
	                <form action="./${ p.getProjectId() }/addobjective" method="post">
	                  <div class="input-group">
	                    <input
	                      type="text"
	                      class="form-control"
	                      id="otitle"
	                      name="otitle"
	                      placeholder="New Objective"
	                      aria-label="New Objective"
	                      aria-describedby="basic-addon1"
	                    />
	                    <input
	                      type="text"
	                      class="form-control smaller-inp"
	                      id="label"
	                      name="label"
	                      placeholder="label"
	                      aria-label="label"
	                      aria-describedby="basic-addon1"
	                    />
	                    <button
	                      class="btn btn-outline-secondary"
	                      type="submit"
	                      id="button-addon1"
	                    >
	                      생성
	                    </button>
	                  </div>
	                </form>
	              </div>
	            </div>
            <c:forEach items="${p.getObjectives()}" var="obj">
              <div class="entry-item">
                <div class="objective">
                  <div class="objective-name">${obj.getOtitle()}</div>
                  <div class="extra-info">
                    <div class="holdername">
                      ${ obj.getAssignee().charAt(0) }
                    </div>
                    <div class="badge bg-ligh text-dark">
                      ${ obj.getLabel() }
                    </div>
                    <!-- <div class="completed">2/4</div> -->
                  </div>
                </div>
                <div class="key-results">
                  <ul class="list-group-flush">
                    <c:forEach items="${obj.getKeyResults()}" var="kresult">
                      <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div>
                          <input
                            class="form-check-input me-1"
                            type="checkbox"
                            name="${kresult.kid }"
                            id="${kresult.kid }"
                            onclick="handlecbox(this);"
                            value=""
                            aria-label="..."
                            <c:if test="${kresult.getBCompleted()}">checked="checked"</c:if>
                          />
                          ${kresult.getKtitle()}
                        </div>
                        <div><a href="./${ p.getProjectId() }/delKRes/${kresult.getKid()}">[X]</a></div>
                      </li>
                    </c:forEach>
                    <li class="list-group-item">
                    <form action="./${ p.getProjectId() }/addkresult" method="post">
                      <div class="input-group mb-3">
                      	<input type="hidden" id="objectiveId" name="objectiveId" value="${ obj.getOid() }" />
                        <input
                          type="text"
                          class="form-control"
                          id="ktitle"
                          name="ktitle"
                          placeholder="Key Result"
                          aria-label="Key Result"
                          aria-describedby="basic-addon1"
                        />
                        <button
                          class="btn btn-outline-secondary"
                          type="submit"
                          id="button-addon1"
                        >
                          추가
                        </button>
                      </div>
                    </form>
                  </li>
                  </ul>
                </div>
              </div>
            </c:forEach>

          </div>
        </div>
      </div>
    </div>
    <script>
      function handlecbox(event) {
    	  console.log(event.name, event.checked)
    	  const xhttp = new XMLHttpRequest();
    	  xhttp.open("GET", "./${ p.getProjectId() }/keycomplete?kid="+event.name+"&completed=" + (event.checked ? "1" : "0"));
    	  xhttp.send();
      }
      
      //function isOwner(event) {
   	  //  if (${p.getOwner()} != ) return alert("Only the owner can do it");
      //  window.location.href = "./${ p.getProjectId() }/edit" + code;
      //}
    </script>
  </body>
</html>
