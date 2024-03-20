<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/WEB-INF/css/basic.css" rel="stylesheet" />

<style>
.bodyWrap {
	width: 100%;
	height: 700px;
	margin: 20px 0;
}
</style>

<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ae6b29b990b7ef9527872c78e6bf812f">
	
</script>

<style>
#map {
	border: 5px solid black;
	width: 800px;
	height: 500px;
}
</style>

</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<div id="map">
	<script>
		
<%--	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(37.5126335, 126.9984783), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};

		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴 --%>
		
		
		<%--		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    }; 

	    
	    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 마커가 표시될 위치입니다 
		var markerPosition = new kakao.maps.LatLng(33.450701, 126.570667);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
		// marker.setMap(null); --%>
		
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(35.2327181, 129.1554041), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 
// 마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
    {
        title: '신라대학교', 
        latlng: new kakao.maps.LatLng(35.16792, 128.9970255)
    },
    {
        title: '동서대학교', 
        latlng: new kakao.maps.LatLng(35.1461119, 129.0070218)
    },
    {
        title: '경성대학교', 
        latlng: new kakao.maps.LatLng(35.1397716, 129.0984966)
    },
    {
        title: '동아대학교 승학캠퍼스',
        latlng: new kakao.maps.LatLng(35.116637, 128.9684964)
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}		
		
		
	</script></div>



</body>
</html>


<%@ include file="/WEB-INF/layout/footer.jsp"%>