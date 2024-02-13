<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<style>
    .map_wrap, .map_wrap * {margin:0;padding:0;font-size:12px;}
    .map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
    .map_wrap {position:relative;width:100%;height:500px;}
    #menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:#f8f7fd;z-index: 1;font-size:12px;border-radius: 10px;}
    .bg_white {background:#fff;}
    #menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
    #menu_wrap .option{text-align: center;}
    #menu_wrap .option p {margin:10px 0;}  
    #menu_wrap .option button {margin-left:5px;}
    #placesList li {list-style: none;}
    #placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
    #placesList .item span {display: block;margin-top:4px;}
    #placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
    #placesList .item .info{padding:10px 0 10px 15px;}
    #placesList .info .gray {color:#8a8a8a;}
    #placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
    #placesList .info .tel {color:#41087c;}
    #placesList .item .markerbg {float:left;width:60px; height:85px;margin:10px 0 0 10px;background:url(/images/common/Marker1.png) no-repeat;}
    #placesList .item .marker_1 {background-position: 10px 5px;}
  
    #pagination {margin:10px auto;text-align: center;}
    #pagination a {display:inline-block;margin-right:10px;}
    #pagination .on {font-weight: bold; cursor: default;color:#777;}
    </style>
<div class="container-xl">
    <!--------------------------------------------------상단---------------------------------------------------------->
    <div class="pb-5 position-relative">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb"
             class="position-absolute end-0">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/main/index.do">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">지점안내</li>
                <li class="breadcrumb-item active" aria-current="page">전국지점</li>
            </ol>
        </nav>
    </div>

    <div class="carLife-container">
        <div class="inner-type2">
            <section class="text-center">
                <h1 class="tit">전국지점안내</h1>
            </section>

            <form class="pt-5 row g-3 align-items-center" style="text-align: center;">
                <div class="col-6">
                    <label class="visually-hidden" for="inlineFormInputGroupUsername">Use</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="inlineFormInputGroupUsername"
                               placeholder="지역, 지점명을 검색하시면 가까운 매장을 찾으실 수 있습니다.">
                    </div>
                </div>
                <div class="col-3">
                    <div class="d-flex">
                        <button type="submit" class="btn" style="background-color: #41087c; color: white;">검색</button>
                    </div>
                </div>
                <div class="col-3 text-right">
                    <label class="visually-hidden" for="inlineFormSelectPref">Preference</label>
                    <select class="form-select" id="inlineFormSelectPref">
                        <option value="">지역-전체보기</option>
                        <option value="290">24시간지점</option>
                        <option value="280">역사지점</option>
                        <option value="270">공항지점</option>
                        <option value="100">서울</option>
                        <option value="110,120">인천/경기</option>
                        <option value="130">강원</option>
                        <option value="140,150,160,170">충청/대전/세종</option>
                        <option value="180,190,200">전라/광주</option>
                        <option value="210,220,230,240,250">경상/대구/부산/울산</option>
                        <option value="260">제주</option>
                    </select>
                </div>
        
            </form>
            <hr/>
            <div class="map_wrap row">
                <div class="col d-flex">   
                    <div id="menu_wrap" class="bg_white" style="width:30%;height:500px;">
                        <div class="option">
                            <div>
                                <form onsubmit="searchPlaces(); return false;">
                                    지역,지점명 : <input type="text" value="지니카" id="keyword" size="15">

                                    <button type="submit" class="btn" style="background-color: #41087c; color: white;">검색하기</button>
                                </form>
                            </div>
                        </div>
                        <hr>
                        <ul id="placesList"></ul>
                        <div id="pagination"></div>
                    </div>
                </div>    
                <div class="col d-flex pt-2">  
                    <div id="map" style="width:100%;height:500px;"></div>
                </div>
            </div>

            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=64380934726f3db60587abc2f327cbf4&libraries=services"></script>
            <script>
            // 마커를 담을 배열입니다
            var markers = [];
            
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                mapOption = {
                    center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
                    level: 3 // 지도의 확대 레벨
                };  
            
            // 지도를 생성합니다    
            var map = new kakao.maps.Map(mapContainer, mapOption); 
            
            // 장소 검색 객체를 생성합니다
            var ps = new kakao.maps.services.Places();  
            
            // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
            var infowindow = new kakao.maps.InfoWindow({zIndex:1});
            
            // 키워드로 장소를 검색합니다
            searchPlaces();
            
            // 키워드 검색을 요청하는 함수입니다
            function searchPlaces() {
            
                var keyword = document.getElementById('keyword').value;
            
                if (!keyword.replace(/^\s+|\s+$/g, '')) {
                    alert('키워드를 입력해주세요!');
                    return false;
                }
                keyword += " 렌터카";
            
                // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
                ps.keywordSearch( keyword, placesSearchCB); 
            }
            
            // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
            function placesSearchCB(data, status, pagination) {
                if (status === kakao.maps.services.Status.OK) {
            
                    // 정상적으로 검색이 완료됐으면
                    // 검색 목록과 마커를 표출합니다
                    displayPlaces(data);
            
                    // 페이지 번호를 표출합니다
                    displayPagination(pagination);
            
                } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
            
                    alert('검색 결과가 존재하지 않습니다.');
                    return;
            
                } else if (status === kakao.maps.services.Status.ERROR) {
            
                    alert('검색 결과 중 오류가 발생했습니다.');
                    return;
            
                }
            }
            
            // 검색 결과 목록과 마커를 표출하는 함수입니다
            function displayPlaces(places) {
            
                var listEl = document.getElementById('placesList'), 
                menuEl = document.getElementById('menu_wrap'),
                fragment = document.createDocumentFragment(), 
                bounds = new kakao.maps.LatLngBounds(), 
                listStr = '';
                
                // 검색 결과 목록에 추가된 항목들을 제거합니다
                removeAllChildNods(listEl);
            
                // 지도에 표시되고 있는 마커를 제거합니다
                removeMarker();
                
                for ( var i=0; i<places.length; i++ ) {
            
                    // 마커를 생성하고 지도에 표시합니다
                    var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                        marker = addMarker(placePosition, i), 
                        itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다
            
                    // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                    // LatLngBounds 객체에 좌표를 추가합니다
                    bounds.extend(placePosition);
            
                    // 마커와 검색결과 항목에 mouseover 했을때
                    // 해당 장소에 인포윈도우에 장소명을 표시합니다
                    // mouseout 했을 때는 인포윈도우를 닫습니다
                    (function(marker, title) {
                        kakao.maps.event.addListener(marker, 'mouseover', function() {
                            displayInfowindow(marker, title);
                        });
            
                        kakao.maps.event.addListener(marker, 'mouseout', function() {
                            infowindow.close();
                        });
            
                        itemEl.onmouseover =  function () {
                            displayInfowindow(marker, title);
                        };
            
                        itemEl.onmouseout =  function () {
                            infowindow.close();
                        };
                    })(marker, places[i].place_name);
            
                    fragment.appendChild(itemEl);
                }
            
                // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
                listEl.appendChild(fragment);
                menuEl.scrollTop = 0;
            
                // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
                map.setBounds(bounds);
            }
            
            // 검색결과 항목을 Element로 반환하는 함수입니다
            function getListItem(index, places) {
            
                var el = document.createElement('li'),
                itemStr = '<span class="markerbg marker_' + (1) + '"></span>' +
                            '<div class="info">' +
                            '   <h5>' + places.place_name + '</h5>';
            
                if (places.road_address_name) {
                    itemStr += '    <span>' + places.road_address_name + '</span>' +
                                '   <span class="jibun gray">' +  places.address_name  + '</span>';
                } else {
                    itemStr += '    <span>' +  places.address_name  + '</span>'; 
                }
                             
                  itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                            '</div>';           
            
                el.innerHTML = itemStr;
                el.className = 'item';
            
                return el;
            }
            
            // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
            function addMarker(position, idx, title) {
                var imageSrc = '/images/common/Marker3.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                    imageSize = new kakao.maps.Size(30, 47),  // 마커 이미지의 크기
                    imgOptions =  {
                        offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                    },
                    markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                        marker = new kakao.maps.Marker({
                        position: position, // 마커의 위치
                        image: markerImage 
                    });
            
                marker.setMap(map); // 지도 위에 마커를 표출합니다
                markers.push(marker);  // 배열에 생성된 마커를 추가합니다
            
                return marker;
            }
            
            // 지도 위에 표시되고 있는 마커를 모두 제거합니다
            function removeMarker() {
                for ( var i = 0; i < markers.length; i++ ) {
                    markers[i].setMap(null);
                }   
                markers = [];
            }
            
            // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
            function displayPagination(pagination) {
                var paginationEl = document.getElementById('pagination'),
                    fragment = document.createDocumentFragment(),
                    i; 
            
                // 기존에 추가된 페이지번호를 삭제합니다
                while (paginationEl.hasChildNodes()) {
                    paginationEl.removeChild (paginationEl.lastChild);
                }
            
                for (i=1; i<=pagination.last; i++) {
                    var el = document.createElement('a');
                    el.href = "#";
                    el.innerHTML = i;
            
                    if (i===pagination.current) {
                        el.className = 'on';
                    } else {
                        el.onclick = (function(i) {
                            return function() {
                                pagination.gotoPage(i);
                            }
                        })(i);
                    }
            
                    fragment.appendChild(el);
                }
                paginationEl.appendChild(fragment);
            }
            
            // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
            // 인포윈도우에 장소명을 표시합니다
            function displayInfowindow(marker, title) {
                var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
            
                infowindow.setContent(content);
                infowindow.open(map, marker);
            }
            
             // 검색결과 목록의 자식 Element를 제거하는 함수입니다
            function removeAllChildNods(el) {   
                while (el.hasChildNodes()) {
                    el.removeChild (el.lastChild);
                }
            }
            </script>
            </div>
        </div>
    <!--------------------------------------------------하단---------------------------------------------------------->
</div>