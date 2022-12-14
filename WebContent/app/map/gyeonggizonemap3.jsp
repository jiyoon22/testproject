<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div id="map" style="width: 800px;height: 600px;"></div>
   <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=88f7bae9bdd9c7bb15080a4b19b80df9"></script>
   <script>
      var container = document.getElementById('map');
      var options = {
         center: new kakao.maps.LatLng(37.490426, 126.750989),
         level: 3
      };

      var map = new kakao.maps.Map(container, options);
      // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(37.490426, 126.750989); 

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
    position: markerPosition
    });

    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    // 인포윈도우로 장소에 대한 설명을 표시합니다
    var infowindow = new kakao.maps.InfoWindow({
     content: '<div style="width:150px;text-align:center;padding:6px 0;">리얼실내바다낚시터</div>'
        });
        infowindow.open(map, marker);

   </script>
</body>
</html>