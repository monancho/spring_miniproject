<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>마이페이지</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <jsp:include page="header.jsp"></jsp:include>

  <main>
    <section class="mypage">
      <h2 class="mypage-title">마이페이지</h2>

      <div class="profile-card">
        <h3>회원 정보</h3>
        <p><span>아이디:</span> ${mDto.memberid}</p>
        <p><span>이름:</span> ${mDto.membername}</p>
        <p><span>가입일:</span> ${mDto.memberdate}</p>
      </div>

      <div class="mypage-actions">
        <a href="MBRupdate" class="btn btn-primary">회원정보 수정</a>
        <a href="MBRdelete" class="btn btn-secondary">회원탈퇴</a>
        <a href="boardlist?searchType=bwriter&searchKeyword=${mDto.memberid}" class="btn btn-primary">내가 쓴 글 보기</a>
      </div>
    </section>
  </main>

  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
