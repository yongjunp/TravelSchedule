<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*"%>
<%
Date date = new Date();
SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
String strdate = simpleDate.format(date);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Modern Business - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="https://fonts.googleapis.com/css?family=Jua:400"
	rel="stylesheet">
<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Jua:400" rel="stylesheet">
<style type="text/css">
.disnone {
	display: none;
}

}
.asd {
	height: auto;
}

.travelList {
	margin: 10px;
	display: flex;
	box-shadow: 0px 0px 4px #A2A2A2;
	width: 405px;
	border-radius: 10px;
}
.btn-pmc {
	border-radius: 25px;
	height: 40px;
	width: 40px;
}

.w-btn-pink-outline {
	border: 3px solid #f199bc;
	color: #6e6e6e;
}

.w-btn-pink-outline:hover {
	background-color: #f199bc;
	color: #d4dfe6;
}

.w-btn-blue-outline:hover {
	background-color: #6aafe6;
	color: #d4dfe6;
}

.w-btn-blue-outline {
	border: 3px solid #6aafe6;
	color: #6e6e6e;
}

.w-btn-outline {
	position: relative;
	padding: 5px 30px;
	border-radius: 15px;
	font-family: "paybooc-Light", sans-serif;
	box-shadow: 0 0px 10px rgba(0, 0, 0, 0.2);
	text-decoration: none;
	font-weight: 600;
	transition: 0.25s;
	margin: 3px;
}

.bg-wh {
	background-color: white;
	box-shadow: 0px 0px 10px #A2A2A2;
}

div {
	font-family: 'Jua' !important;
}

#feArea::-webkit-scrollbar {
	width: 8px; /* 스크롤바의 너비 */
}

#feArea::-webkit-scrollbar-thumb {
	height: 30%; /* 스크롤바의 길이 */
	background: #217af4; /* 스크롤바의 색상 */
	border-radius: 10px;
}

#feArea::-webkit-scrollbar-track {
	background: rgba(33, 122, 244, .1); /*스크롤바 뒷 배경 색상*/
}

#tdArea::-webkit-scrollbar {
	width: 8px; /* 스크롤바의 너비 */
}

#tdArea::-webkit-scrollbar-thumb {
	height: 30%; /* 스크롤바의 길이 */
	background: #217af4; /* 스크롤바의 색상 */
	border-radius: 10px;
}

#tdArea::-webkit-scrollbar-track {
	background: rgba(33, 122, 244, .1); /*스크롤바 뒷 배경 색상*/
}

.test {
	width: 245px;
	transition: width 1s ease;
}

.test1 {
	width: 745px;
	border-radius: 0;
	background-color: red;
}
.fade-in-box {
  display: inline-block;
  background: yellow;
  padding: 10px;
  animation: fadein 0.3s;
}
@keyframes fadein {
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
.fade-out-box {
  display: inline-block;
  background: yellow;
  padding: 10px;
  animation: fadeout 0.3s;
  animation-fill-mode: forwards;
}
@keyframes fadeout {
    from {
        opacity: 1;
    }
    to {
        opacity: 0;
    }
}
}
</style>
</head>
<body class="d-flex flex-column h-100">
	<main class="flex-shrink-0">
		<!-- Navigation-->

		<!-- contant 시작 -->
		<div class="p-4 rounded-end test"
			style="display: flex; float: left; position: absolute; background-color: aliceblue; z-index: 3; height: -webkit-fill-available;">
			<div class="">
				<h5 onclick="location.href='${pageContext.request.contextPath }/'">
					<i class="fa-solid fa-shoe-prints"></i> FP
				</h5>
				<nav class=""
					style="border: 1px solid #A2A2A2; border-radius: 10px; background-color: white; box-shadow: 0 0 8px #A2A2A2">
					<div id="scArea" class="p-3	"
						style="height: 85vh; width: 200px; display: flow; text-overflow: ellipsis; overflow-y:auto;">
						<c:forEach var="sc" items="${scdestList }">
							<c:if test="${sc.SCDATE != null}">
								<c:choose>
									<c:when test="${sc.TDCODE != null }">
										<div style="padding: 0; margin: 0;" id="${sc.TDCODE }div"
											data-bs-toggle="collapse"
											data-bs-target="#${sc.TDCODE }"
											aria-controls="navbarToggleExternalContent"
											aria-expanded="false" aria-label="Toggle navigation">
											<p style="margin: 0px;">${sc.TDNAME }</p>
											<p>${sc.SCDATE }</p>
										</div>

										<div class="collapse"
											id="${sc.TDCODE }"
											style="text-align:end;"
											data-bs-toggle="modal" data-bs-target="#changeModal">
											<button class="btn btn-primary" onclick="scheduleUpdate('${sc.MID}', '${sc.CDCODE}', '${sc.TDCODE}', '${sc.FECODE}', 'td')">변경하기</button>
										</div>
									</c:when>
									<c:when test="${sc.FECODE != null }">
										<div style="padding: 0; margin: 0;" id="${sc.FECODE }div"
											data-bs-toggle="collapse"
											data-bs-target="#${sc.FECODE }"
											aria-controls="navbarToggleExternalContent"
											aria-expanded="false" aria-label="Toggle navigation">
											<p style="margin: 0px;">${sc.FENAME }</p>
											<p>${sc.SCDATE }</p>
										</div>

										<div class="collapse"
											id="${sc.FECODE }"
											style="text-align:end;"
											data-bs-toggle="modal" data-bs-target="#changeModal">
										<button class="btn btn-primary" onclick="scheduleUpdate('${sc.MID}', '${sc.CDCODE}', '${sc.TDCODE}', '${sc.FECODE}', 'fe')">변경하기</button>
										</div>
									</c:when>
								</c:choose>

								<hr>
							</c:if>

						</c:forEach>
					</div>
					<div class="p-2 container-fluid" style="text-align: end;">
						<c:if test="${cd.cdstate == 'Y' }">
							<button class="btn btn-primary"
								onclick="updateCdstate('${cd.cdcode}')" title="계획 확정하기">
								<i class="fa-solid fa-floppy-disk"></i>
							</button>
						</c:if>
						<button class="btn btn-info" type="button" title="여행지 보기"
							onclick="checkDest()">
							<i class="fa-solid fa-list"></i>
						</button>
					</div>
				</nav>
			</div>
			<div class="p-4 asd disnone" id="DestArea"
				style="overflow: hidden; background-color: aliceblue; margin-left: 15px;">
				<div class="col d-flex justify-content-center"
					style="margin-bottom: 15px;">
					<button class="w-btn-outline w-btn-pink-outline" onclick="disnonefe()">여행지</button>
					<button class="w-btn-outline w-btn-blue-outline" onclick="disnonetd()">축제</button>
				</div>
				<div>
					<nav id="tdArea" class=""
						style="overflow-y: auto;overflow-x: hidden; height: 85vh; border-radius: 10px;">
						<c:forEach items="${ scdestList}" var="td">
							<c:if test="${td.TDCODE != null }">
								<div class="travelList" style="background-color: white;">
									<img class="col-3 img-thumbnail" src="${td.TDPHOTO }" alt="..."
										onerror="this.src='/resources/tdest/3509.jpg'"
										style="width =: 286px; height: 90px; border-radius: 12px;"
										loading="lazy">
									<div class="col-6 p-1">
										<h6 style="font-weight: bold;">${td.TDNAME }</h6>
										<p class=""
											style="font-size: 13px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${td.TDADDRESS }</p>
									</div>
									<div class="col-3 p-1" style="margin: auto;">
										<c:if test="${td.SCDATE == null}">
											<button class="btn btn-primary btn-pmc"
												onclick="selectDest('${td.MID}','${td.CDCODE }','${td.TDCODE }','tdest')"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												<i class="fa-solid fa-plus"></i>
											</button>
										</c:if>
										<c:if test="${td.SCDATE != null }">
											<button class="btn btn-info btn-pmc">
												<i class="fa-solid fa-check"></i>
											</button>
										</c:if>
										<button class="btn btn-danger btn-pmc"
											onclick="removeDest('${td.MID}','${td.CDCODE }','${td.TDCODE }','tdest')">
											<i class="fa-solid fa-minus"></i>
										</button>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</nav>
					<nav id="feArea" class="disnone"
						style="overflow-y: auto;overflow-x: hidden; height:85vh; border-radius: 15px;">
						<c:forEach items="${ scdestList}" var="fe">
							<c:if test="${fe.FECODE != null }">
								<div class="travelList" style="background-color: white;">
									<img class="col-3 img-thumbnail" src="${fe.FEPOSTER }"
										alt="..." onerror="this.src='/resources/tdest/3509.jpg'"
										style="width =: 286px; height: 90px; border-radius: 12px;"
										loading="lazy">
									<div class="col-6 p-1">
										<h6 style="font-weight: bold;">${fe.FENAME }</h6>
										<p
											style="font-size: 13px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">${fe.FEADDRESS }</p>
									</div>
									<div class="col-3 p-1" style="margin: auto;">
										<c:if test="${fe.SCDATE == null}">
											<button class="btn btn-primary btn-pmc"
												onclick="selectDest('${fe.MID}','${fe.CDCODE }','${fe.FECODE }','festival')"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												<i class="fa-solid fa-plus"></i>
											</button>
										</c:if>
										<c:if test="${fe.SCDATE != null }">
											<button class="btn btn-info btn-pmc">
												<i class="fa-solid fa-check"></i>
											</button>
										</c:if>
										<button class="btn btn-danger btn-pmc"
											onclick="removeDest('${fe.MID}','${fe.CDCODE }','${fe.FECODE }','festival')">
											<i class="fa-solid fa-minus"></i>
										</button>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</nav>
				</div>
			</div>

		</div>
		<div id="map" class="col border border-dark"
			style="height: 100vh; margin-left: 243px;"></div>

		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">날짜 선택하기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body" id="selectDest">
						<p id="destName"></p>
						<input type="date" id="selDate" min="<%=strdate%>"> <select
							id="selHH">
							<c:forEach begin="0" end="23" var="i">
								<option value="${i}">${i}</option>
							</c:forEach>
						</select> : <select id="selMM">
							<option value="00">0</option>
							<option value="30">30</option>
						</select>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							data-bs-dismiss="modal" id="selectClear">선택</button>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="changeModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">날짜 수정하기</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body" id="scheduleUpdate">
						<p id="destName"></p>
						<input type="date" id="sDate" min="<%=strdate%>"> <select
							id="sHH">
							<c:forEach begin="0" end="23" var="i">
								<option value="${i}">${i}</option>
							</c:forEach>
						</select> : <select id="sMM">
							<option value="00">0</option>
							<option value="30">30</option>
						</select>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							data-bs-dismiss="modal" id="upDateSc">수정</button>
					</div>
				</div>
			</div>
		</div>
		<!-- contant 종료 -->
	</main>
	<!-- Footer
	-->
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<!-- kakao map api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=963b2e12b6b2948f660fa6eab737705a"></script>
	<script src="https://kit.fontawesome.com/c8056a816e.js"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
	
	let lalngList = JSON.parse('${lalngList}');
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	
	var options = {}; //지도를 생성할 때 필요한 기본 옵션
	if(lalngList.length > 0){
		options = {
			center: new kakao.maps.LatLng( lalngList[0].lati, lalngList[0].longti), //지도의 중심좌표.
			level: 10, //지도의 레벨(확대, 축소 정도)
			draggable: false
	};
		
	}else{
		options = {
				center: new kakao.maps.LatLng(37.5642135,127.0016985), //지도의 중심좌표.
				level: 10, //지도의 레벨(확대, 축소 정도)
				draggable: false
			};
	}
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	map.setZoomable(true);
	var positions = [];
	var bounds = new kakao.maps.LatLngBounds(); 
	for(let lalng of lalngList){
		positions.push({title: lalng.name, latlng: new kakao.maps.LatLng(lalng.lati, lalng.longti)})
		bounds.extend(new kakao.maps.LatLng(lalng.lati, lalng.longti));
		let scDiv = document.querySelector('#'+lalng.code +'div');
		scDiv.addEventListener("click", function(){
			moveMap(lalng);
			});
	}
		let colornum = 500;
		let color = "#" + colornum.toString(16);
	for(let i in lalngList){
		if(i == 0){
			continue;
		}
		if(lalngList[i-1].scdate.split(' ')[0]== lalngList[i].scdate.split(' ')[0]){
		var linePath = [
		    new kakao.maps.LatLng(lalngList[i-1].lati, lalngList[i-1].longti),
		    new kakao.maps.LatLng(lalngList[i].lati, lalngList[i].longti),
		];

		// 지도에 표시할 선을 생성합니다
		var polyline = new kakao.maps.Polyline({
		    path: linePath, // 선을 구성하는 좌표배열 입니다
		    strokeWeight: 5, // 선의 두께 입니다
		    strokeColor: color, // 선의 색깔입니다
		    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'solid' // 선의 스타일입니다
		});

		// 지도에 선을 표시합니다 
		polyline.setMap(map);  
		}else{
			colornum = colornum + 1000;
			color = "#" + colornum.toString(16);
		}
	}

	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커를 표시할 위치
	        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	    });
	}
	if(lalngList.length>0){
	map.setBounds(bounds);
		
	}
	
	</script>
	<script type="text/javascript">
		function selectDest(mid, cdcode, destcode, seloption){
			let destName = document.querySelector("#destName");
			destName.innerText = name;
			let modalBtn = document.querySelector("#selectClear");
			modalBtn.addEventListener("click", function(){
				let scdate = document.querySelector("#selDate").value;
				if(scdate == ""){
					alert("날짜도 선택해주세요");
				}else{
				let schour = document.querySelector("#selHH").value
				if(schour.length == 1){
					schour = "0"+schour;
				}
				scdate = scdate + " " + schour;
				let scmin = document.querySelector("#selMM").value;
				scdate = scdate + ":" + scmin;
				
				let dataoption = {};
				if(seloption == 'tdest'){
					dataoption = {"mid":mid,"cdcode":cdcode,"tdcode":destcode ,"scdate":scdate,"seloption":seloption}
				}else{
					dataoption = {"mid":mid,"cdcode":cdcode,"fecode":destcode ,"scdate":scdate,"seloption":seloption}
				}
				
				
				$.ajax({
					url:"/updateSc",
					type:"post",
					data:dataoption,
					success:function(rs){
						location.reload();
					}
				})
				}
			})
			}

		
	</script>
	<script type="text/javascript">
	$(document).ready(function(){
		if("${sessionScope.loginId}" == ""){
			location.herf="/memberLoginForm";
		}
	}
	)
	</script>
	<script type="text/javascript">
	function updateCdstate(cdcode){
		let check = null;
		let scAreaTag = document.querySelector("#scArea").childElementCount;
		let tdAreaTag = document.querySelector("#tdArea").childElementCount;
		let feAreaTag = document.querySelector("#feArea").childElementCount;
		let today = new Date();
		let scDate = lalngList[0].scdate.split(" ")[0];
		let checkDate = false;
		if(Number(scDate.split('/')[0]) > today.getFullYear()){
			checkDate = true;
		}else if(Number(scDate.split('/')[0]) == today.getFullYear()){
			if(Number(scDate.split('/')[1])>today.getMonth()+1){
				checkDate=true;
			}else if(Number(scDate.split('/')[1])==today.getMonth()+1){
				if(Number(scDate.split('/')[2])>=today.getDate()){
					checkDate=true;
				}
			}
		}
		if(!checkDate){
			alert('이미 지난 계획이 있습니다.');
			return;
		}
		if(lalngList.length == tdAreaTag + feAreaTag){
			check = confirm("계획을 확정하면 더는 수정할 수 없습니다.");			
		}else{
			alert("선택하지 않은 여행지가 있습니다!")
			return;
		}
		if(check){
		$.ajax({
			url:'/updateCdstate',
			type:"post",
			data:{'cdcode':cdcode},
			aync:false,
			success:function(rs){
				switch (rs) {
				case 'Y':
					location.href="/selectCalendar";
					break;
				case 'C':
					alert("계획확정에 실패하였습니다.");
					break;
				case 'N':
					alert("계획을 1개 이상 추가해주세요");
					break;
				}
			}	
		})
		}
	}
	</script>
	<script type="text/javascript">
	function removeDest(mid, cdcode, destcode, seloption){
		let dataOption = {};
		if(seloption == 'tdest'){
			dataOption = {"mid":mid, "cdcode":cdcode, "tdcode":destcode, "seloption":seloption};
		}
		if(seloption == 'festival'){
			dataOption = {"mid":mid, "cdcode":cdcode, "fecode":destcode, "seloption":seloption};
		}
		$.ajax({
			url:"/removeDest",
			type:"post",
			data:dataOption,
			aync:false,
			success:function(rs){
				if(rs == "Y"){
					location.reload();
				}
				if(rs == "N"){
					alert("행선지 삭제에 실패하였습니다.");
				}
			}
		})
	}
	function disnonetd(){
		let tdArea =document.querySelector("#tdArea");
		let feArea = document.querySelector("#feArea");
		tdArea.classList.add('disnone');
		feArea.classList.remove('disnone');
		
		
	}
	function disnonefe(){
		let tdArea =document.querySelector("#tdArea");
		let feArea = document.querySelector("#feArea");
		tdArea.classList.remove('disnone');
		feArea.classList.add('disnone');
		
		
	}
	</script>
	<script type="text/javascript">
		let count = true;
	function checkDest(){
		let asdfds = document.querySelector(".test");
		let DestArea = document.querySelector('#DestArea');
		if(count){
			asdfds.classList.add("test1");
			setTimeout(function(){
			DestArea.classList.add('fade-in-box');
			DestArea.classList.remove('disnone');
				
			setTimeout(function() {
				DestArea.classList.remove("fade-in-box");
					}, 900);
			},400);
			count = false;
		}else{
			DestArea.classList.add('fade-out-box');
			asdfds.classList.remove("test1");
			setTimeout(function() {
			DestArea.classList.add('disnone');
			DestArea.classList.remove("fade-out-box");
					}, 300);
			count = true;
		}
	}
	</script>
	
	<script type="text/javascript">
		function scheduleUpdate(mid, cdcode, tdcode, fecode, scOption) {
			console.log(mid, cdcode, tdcode, fecode, scOption);
			
			let updateBtn = document.querySelector("#upDateSc");
			updateBtn.addEventListener("click", function(){
				let scdate = document.querySelector("#sDate").value;
				console.log(scdate);
				if(scdate == ""){
					alert("날짜를 선택해주세요");
				}else{
				let schour = document.querySelector("#sHH").value
				if(schour.length == 1){
					schour = "0"+schour;
				}
				scdate = scdate + " " + schour;
				let scmin = document.querySelector("#sMM").value;
				scdate = scdate + ":" + scmin;
				
				console.log(scdate, mid, cdcode, tdcode,  fecode, scOption);
				
				let dataoption = {};
				if(scOption == 'td'){
					dataoption = {"mid":mid, "cdcode":cdcode, "tdcode":tdcode, "scdate":scdate, "scOption":scOption}
				}else{
					dataoption = {"mid":mid, "cdcode":cdcode, "fecode":fecode, "scdate":scdate, "scOption":scOption}
				}
				$.ajax({
					url:"/scheduleUpdate",
					type:"post",
					data: dataoption,
					success:function(rs){
						location.reload();
						}	
					})
			
				}	
			})
		}
	</script>
	<script type="text/javascript">
	function moveMap(cs){
		    // 이동할 위도 경도 위치를 생성합니다 
		    var moveLatLon = new kakao.maps.LatLng(cs.lati, cs.longti);
		    // 지도 중심을 부드럽게 이동시킵니다
		    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
		    map.panTo(moveLatLon); 
	}
	</script>	

</body>
</html>
