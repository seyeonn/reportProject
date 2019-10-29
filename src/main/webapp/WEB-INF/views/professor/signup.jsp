<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en">

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>회원가입</title>
  <link rel="canonical" href="https://getbootstrap.com/docs/4.1/examples/checkout/">
  <style type="text/css">
    <%@include file="/WEB-INF/bootstrap/css/bootstrap.min.css" %>
    <%@include file="/WEB-INF/bootstrap/css/offcanvas.css" %>
    <%@include file="/WEB-INF/bootstrap/css/form-validation.css" %>
  </style>
</head>
<body class="bg-light">
  <div class="container">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand mr-auto mr-lg-0" href="loginform">성공회대학교 과제제출시스템</a>
    </nav>
    <div class="my-3 p-3 bg-white rounded shadow-sm">
      <h4 class="mb-3">회원가입</h4>
      
      <form:form method = "post" modelAttribute="professorRegisterModel" class="needs-validation">
        <hr class="mb-4">
        <div class="mb-3">
          <label>아이디</label>
          <div class="input-group">
          	<form:input path="professorId" class="form-control"  placeholder="반드시 학번이어야 합니다. ex)201732032"/>
            <div class="invalid-feedback">
              아이디를 입력해주세요.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label>이름</label>
          <div class="input-group">
          	<form:input path="professorName" class="form-control" placeholder="반드시 실명이어야 합니다. ex)홍길동"/>
            <div class="invalid-feedback">
              이름을 입력해주세요.
            </div>
          </div>
        </div>

        <div class="mb-3">
          <label>학과</label>
          <form:select path="departmentNo" class="custom-select d-block w-100"
                       itemValue="departmentNo" itemLabel="departmentName" items="${ departments }" />
          <div class="invalid-feedback">
            학과를 선택해주세요.
          </div>
        </div>
        
        <div class="mb-3">
          <label for="taId">* TA 아이디 등록 *</label>
          <form:input path="taId" class="form-control" placeholder="TA 학생이 사용할 아이디를 등록해주세요."/>
          <div class="invalid-feedback">
            TA 아이디를 등록해주세요.
          </div>
        </div>

        <div class="mb-3">
          <label>이메일</label>
          <form:input path="email" class="form-control"  placeholder="you@example.com"/>
          <div class="invalid-feedback">
            이메일을 입력해주세요.
          </div>
        </div>


        <div class="mb-3">
          <label>전화번호</label>      
          <form:input path="phone" class="form-control" placeholder="-없이 숫자만 입력해주세요."/>  
          <div class="invalid-feedback">
            전화번호를 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
          <label>질문</label>
          <form:input path="passwordQuestion" class="form-control" placeholder="비밀번호 재발급을 위한 질문 예) 가장 좋아하는 음식"/>
          <div class="invalid-feedback">
            비밀번호 재발급을 위한 질문을 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
          <label>답</label>
          <form:input path="passwordAnswer" class="form-control" placeholder="패스워드 재발급을 위한 답    예) 치킨"/>
          <div class="invalid-feedback">
            비밀번호 재발급을 위한 답을 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
          <label>비밀번호</label>
          <form:password path="password" class="form-control" placeholder="password" />
          <div class="invalid-feedback">
            비밀번호를 입력해주세요.
          </div>
        </div>

        <div class="mb-3">
          <label>비밀번호 확인</label>
           <form:password path="password2" class="form-control" placeholder="password" />
          <div class="invalid-feedback">
            비밀번호 확인을 입력해주세요.
          </div>
        </div>
        <button class="btn btn btn-primary btn-lg btn-block" type="submit">회원가입</button>
</form:form>
    </div>

    <footer class="my-5 pt-5 text-muted text-center text-small">

    </footer>
  </div>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
  </script>
  <script src="../../assets/js/vendor/popper.min.js"></script>
  <script src="../../dist/js/bootstrap.min.js"></script>
  <script src="../../assets/js/vendor/holder.min.js"></script>
  <script>
      'use strict';

      window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');

        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
          form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
              event.preventDefault();
              event.stopPropagation();
            }
            form.classList.add('was-validated');
          }, false);
        });
      }, false);
    })();
  </script>
</body>

</html>
