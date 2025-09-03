<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<main>
  <form class="join-form" action="joinOk.do" method="post">
    <h2>회원가입</h2>

    <!-- 아이디 -->
    <label for="userid">아이디</label> 
      <input type="text" id="userid" name="memberid" required placeholder="아이디를 입력하세요">

    <!-- 비밀번호 -->
    <label for="password">비밀번호</label>
    <input type="password" id="password" name="memberpw" required placeholder="비밀번호를 입력하세요">

    <!-- 이름 -->
    <label for="username">이름</label>
    <input type="text" id="username" name="membername" required placeholder="이름을 입력하세요">

    <!-- 가입 버튼 -->
    <div class="form-actions">
      <button type="submit" class="btn btn-primary">가입하기</button>
      <button type="reset" class="btn btn-secondary">취소</button>
    </div>
  </form>
</main>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
