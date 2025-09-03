<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>로그인</title>
  <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

  <!-- 헤더 -->
  <jsp:include page="header.jsp"></jsp:include>

  <!-- 메인 -->
  <main>
  <section class="login-form">
    <h2>로그인</h2>
    <form action="loginOk" method="post">
      <label for="memberid">아이디</label>
      <input type="text" id="memberid" name="memberid" required>

      <label for="memberpw">비밀번호</label>
      <input type="password" id="memberpw" name="memberpw" required>

      <button type="submit" class="btn btn-primary">로그인</button>
      <button type="reset" class="btn btn-secondary">취소</button>
    </form>

    <p style="text-align:center; margin-top:1rem;">
      아직 회원이 아니신가요? <a href="join.do">회원가입</a>
    </p>
  </section>
</main>


  <!-- 푸터 -->
  <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
