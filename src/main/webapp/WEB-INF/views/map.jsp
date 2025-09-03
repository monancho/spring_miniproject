<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>오시는 길 | DevCommunity</title>
  <link rel="stylesheet" href="resources/css/style.css">
  <style>
    .map-page {
      max-width: 900px;
      margin: 2rem auto;
      padding: 2rem;
      background: #fff;
      border-radius: 12px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    }
    .map-page h2 {
      font-size: 1.5rem;
      font-weight: bold;
      margin-bottom: 0.5rem;
      text-align: center;
    }
    .map-page p {
      text-align: center;
      margin-bottom: 2rem;
      color: #555;
    }

    /* 지도 영역 */
    .map-box {
      display: flex;
      justify-content: center;
      margin: 0 auto 2rem auto;
    }
    #map {
      width: 100%;
      max-width: 700px;
      height: 350px;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.1);
    }

    /* 교통편 안내 카드 */
    .directions {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 1.5rem;
      margin-top: 2rem;
    }
    .direction-card {
      background: #f9fafb;
      border: 1px solid #e5e7eb;
      border-radius: 10px;
      padding: 1rem;
      text-align: center;
      box-shadow: 0 1px 4px rgba(0,0,0,0.05);
      transition: transform 0.2s;
    }
    .direction-card:hover {
      transform: translateY(-3px);
    }
    .direction-card h3 {
      font-size: 1.1rem;
      margin-bottom: 0.5rem;
    }
    .direction-card p {
      font-size: 0.95rem;
      color: #444;
      line-height: 1.4;
    }
  </style>
</head>
<body>
  <!-- header include -->
  <jsp:include page="header.jsp"></jsp:include>

  <main>
    <div class="map-page">
      <h2>오시는 길</h2>
      <p>DevCommunity 오프라인 모임 장소를 안내드립니다.</p>

      <!-- 지도 -->
      <div class="map-box">
        <div id="map"></div>
      </div>

      <!-- 카카오 지도 API -->
      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4eca5a1501ef2eb60702552767659f68&libraries=services"></script>
      <script>
        var container = document.getElementById('map');
        var options = {
          center: new kakao.maps.LatLng(37.5564397859151, 126.945190775648),
          level: 3
        };

        var map = new kakao.maps.Map(container, options);

        // 주소-좌표 변환 객체 생성
        var geocoder = new kakao.maps.services.Geocoder();
        var address = "서울특별시 마포구 신촌로 176 중앙빌딩";

        geocoder.addressSearch(address, function(result, status) {
          if (status === kakao.maps.services.Status.OK) {
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
            map.setCenter(coords);

            var marker = new kakao.maps.Marker({
              map: map,
              position: coords
            });

            var infowindow = new kakao.maps.InfoWindow({
              content: '<div style="padding:5px;">' + address + '</div>'
            });
            infowindow.open(map, marker);
          } else {
            alert("주소 검색 실패: " + status);
          }
        });
      </script>

      <!-- 교통편 안내 -->
      <div class="directions">
        <div class="direction-card">
          <h3>🚇 지하철</h3>
          <p>이대역 2호선 6번 출구 빌딩 5층</p>
        </div>
        <div class="direction-card">
          <h3>🚌 버스</h3>
          <p>이대역 정류장에서 하차 후 도보 3분</p>
        </div>
        <div class="direction-card">
          <h3>🚗 자가용</h3>
          <p>건물 내 주차장 이용 가능<br>(2시간 무료)</p>
        </div>
      </div>
    </div>
  </main>

  <!-- footer include -->
  <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
