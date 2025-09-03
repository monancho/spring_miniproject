<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>회원정보 수정</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>

  <main>
    <section class="form-container">
      <h2>회원정보 수정</h2>
      <form action="MBRUpdateOk" method="post">
      	<label for="username">아이디</label>
        <input type="text" id="username" name="memberid" value="${mDto.memberid}" readonly="readonly" >
        
        <label for="username">이름</label>
        <input type="text" id="username" name="membername" value="${mDto.membername}" required>

        <label for="password">비밀번호 확인</label>
        <input type="password" id="memberpw" name="memberpw">


        <button type="submit" class="btn btn-primary">수정하기</button>
      </form>
    </section>
  </main>

  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
