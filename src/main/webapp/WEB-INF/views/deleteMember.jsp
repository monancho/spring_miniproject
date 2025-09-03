<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>회원탈퇴</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>

  <main>
    <section class="form-container">
      <h2>회원탈퇴</h2>
      <p>정말로 회원탈퇴를 진행하시겠습니까? 탈퇴 시 모든 데이터가 삭제됩니다.</p>
      <form action="MBRdeleteOk" method="get">
        <input type="text" id="memberid" name="memberid" value="${mDto.memberid}" readonly="readonly">
        <label for="password">비밀번호 확인</label>
        <input type="password" id="password" name="memberpw" required>

        <div class="form-actions">
          <button type="submit" class="btn btn-danger">탈퇴하기</button>
          <a href="mypage" class="btn btn-secondary">취소</a>
        </div>
      </form>
    </section>
  </main>

  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
