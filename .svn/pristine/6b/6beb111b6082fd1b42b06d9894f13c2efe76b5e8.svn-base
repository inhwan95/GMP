<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/css/mainPage.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath()%>/css/fonts.css" rel="stylesheet" type="text/css" media="all" />


<link rel="stylesheet" href="<%=request.getContextPath()%>/css/calendarmain.css">

<script src="<%=request.getContextPath() %>/js/moment.js"></script>
<script src='<%=request.getContextPath() %>/js/calendermain.js'></script>
<script src="<%=request.getContextPath() %>/js/ko.js"></script>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery-3.6.0.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
<title>Na's Calendar</title>
<style>
.fc-event{
		margin-top: 5px;
		cursor: move;
		border: none;
	}
	
#external-events{
 display: inline-grid;
 float: left;
 width: 15%;
 padding-right: 30px;
}
#featured{
	float: left;
}
.fc-col-header-cell-cushion{
	color : black;
}
#saveBtn{
	background-color: -internal-light-dark;
	width: 100px;
	height: 40px;
	vertical-align: middle;
	font-size: 17px;
	cursor: pointer; 
	margin-right: -72px;
	width: 6.7em;
}
#p1{
	display: inline-block;
}
#menu li:hover{
		background: #2980b9;
		color: rgba(255,255,255,1);
		cursor: pointer;
}
#copyright{
	display: inline-block;
}
#logout{
   	cursor: pointer;
   }
   #mainPageBtn:hover{
   	cursor: pointer;
   }
   #empty{
   	width: 200px;
    height: 200px;
   }
    .fc-daygrid-event-harness > *{ 
    	border: none;
     }  
    .fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event{
    	border: none;
    }
    .fc-dragging {
    display: block !important;
}
</style>
</head>
<body>
<%
	int mem_no = Integer.parseInt( request.getParameter("mem_no") );
	System.out.println("calendarPage.jsp에서의 mem_no"+mem_no);
	int dept_no= Integer.parseInt( (String)request.getAttribute("dept_no") );
	System.out.println("calendarPage.jsp에서의 dept_no"+dept_no);
%>
	<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img id="mainPageBtn" src="./images/logo3.JPG" alt="" />
			<h1><a href="#">Na's Company</a></h1>
			<span>I can do it! <a href="http://templated.co" rel="nofollow">You Can do it!</a></span>
			<br><br>
			<span id="logout"><a>♥♡♥♡♥ 퇴근 ♥♡♥♡♥</a></span>
		</div>
		<div id="menu">
			<ul>
				<li><a id="mypageBtn" href="#" accesskey="3" title="">마이페이지</a></li>
				<li><a id="noticeBtn" href="#" accesskey="5" title="">공지사항</a></li>
				<li id="chatBtn"><a accesskey="3" title="">채팅</a></li>
				<li id= "calendarBtn" class="current_page_item"><a accesskey="4" title="">Calendar</a></li>
				<li ><a id="sanctionBtn"  accesskey="5" title="">전자결재</a></li>
				<li id="conference"><a>회의실</a></li>
				<li ><a id="freeBtn" accesskey="5" title="">자유게시판</a></li>
				<li id="manager"><a>관리자 페이지</a></li>
			</ul>
		</div>
	</div>
	
	<div id="main">
		<div id="top">
		<div style="width: 10%; float: right; text-align: right; margin-right: 73px;">
			<button id="saveBtn"style=""
			 class='fc-today-button fc-button fc-button-primary' onclick="javascript:allSave();">저장하기</button>
		</div>
			<div id="banner">
			
	
	<div id='calendar-container' style="float: right;  width: 100%;" >

		<div id='calendar'></div>
	</div>
			</div><!-- banner -->
			<div id="welcome">
			<div id='external-events' style="" >
<!-- 		<p>  -->
<!-- 			<strong>드래그 이벤트</strong> -->
<!-- 		</p> -->
		<div	class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color: #a9e34b">
			<div class='fc-event-main'>휴가</div>
		</div>
		<div	class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color: #FFCD28">
			<div class='fc-event-main'>출장</div>
		</div>
		<div	class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color: #EA813D">
			<div class='fc-event-main'>회의</div>
		</div>
		<div	class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' style="background-color: #C964E2">
			<div class='fc-event-main'>당직</div>
		</div>
		<p id="p1">
			<input type='checkbox' id='drop-remove' /> <label for='drop-remove'>드롭 후 제거</label>
		</p>
		<div style="display: none; "	class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event' >
			<div class='fc-event-main'>기념일</div>
		</div>
	</div>
			</div><!-- welcome  -->
		</div><!-- top -->
		<!-- <!-- 공지사항 -->
		<div id="featured">
			<div class="title">
			<div id="empty"></div>
<!-- 				<h2>공지사항</h2> -->
<!-- 				<span class="byline"> </span> -->
			</div>
<!-- 			<ul class="style1"> -->
<!-- 				<li class="first"> -->
<!-- 					<p class="date"><a href="#">sept<b>05</b></a></p> -->
<!-- 					<h3>11/24 창립기념일 관련 행사 안내</h3> -->
<!-- 					<p><a href="#">11/24일 창립기념일 기념품 배포 안내드립니다.</a></p> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<p class="date"><a href="#">sept<b>17</b></a></p> -->
<!-- 					<h3>부서별 워크숍 일정 안내</h3> -->
<!-- 					<p><a href="#">관리부-9/27, </a></p> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<p class="date"><a href="#">Jan<b>01</b></a></p> -->
<!-- 					<h3>Amet sed volutpat mauris</h3> -->
<!-- 					<p><a href="#">Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl. Nullam non wisi a sem semper eleifend. Etiam non felis. Donec ut ante.</a></p> -->
<!-- 				</li> -->
<!-- 				<li> -->
<!-- 					<p class="date"><a href="#">Dec<b>31</b></a></p> -->
<!-- 					<h3>Sagittis diam dolor amet</h3> -->
<!-- 					<p><a href="#">Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem. Mauris quam enim, molestie. Donec leo, vivamus fermentum nibh in augue praesent congue rutrum.</a></p> -->
<!-- 				</li> -->
<!-- 			</ul> -->
		</div>
		
		<div id="copyright">
			<div>
				<p> Na's Company 대표: 이나영 | CS center : 1588-2775</p>
				<span>&copy; 대전광역시 중구 중앙로 76 영민빌딩 4층 | Fax : 042-5555-3221</span>
				<span>&copy;DESIGN BY <a href="http://templated.co" rel="nofollow">Yuri Seo</a>.</span>
			</div>
		</div>
		
	</div>
</div>
				
	<!-- 주원 -->
	<script type="text/javascript">
	
	$('#chatBtn').on('click', function(){
	    location.href='<%=request.getContextPath()%>/chatController.do?mem_no='+<%=mem_no%>;
	 });
	$('#calendarBtn').on('click', function(){
		setTimeout(() => {
			window.location.reload();
		}, 700);
	 });
		  
		Kakao.init('58d7ec0a9f82e84f098623ce4850c88d');
		function kakaoLogout() {
		      if (Kakao.Auth.getAccessToken()) {
		        Kakao.API.request({
		          url: '/v1/user/unlink',
		          success: function (response) {
		             console.log(response)
		          },
		          fail: function (error) {
		            console.log(error)
		          },
		        })
		        Kakao.Auth.setAccessToken(undefined)
		      }
		    }  
		
		$('#logout').on('click', function(){
			sessionStorage.clear();
			kakaoLogout();
			
	     	setTimeout(() => {
			location.href ='<%=request.getContextPath() %>/loginPage.jsp';
  			}, 900);
		
		});
		  
	$.ajax({
		url : '<%=request.getContextPath()%>/calToMain.do',
		type : 'post',
		data : {
			"mem_no" : <%=mem_no%>
		},
		async : false,
		success:function(res){
			console.log(res);
			$('#mainPageBtn').on('click', function(){
				location.href ='<%=request.getContextPath() %>/member/login.do?<%="mem_id"%>='+res.mem_id+'&<%="mem_pw"%>='+res.mem_pw+'&<%="dept_no"%>='+res.dept_no+'&<%="mem_nm"%>='+res.mem_nm;
			});
		},
		dataType : 'json'
	});
	
	
		//function calendar(){
			// getSave() 메소드사용을 위해 전역변수로 선언
			var calendar = null;
			var title = "";
			var start ="";
			var end ="";
			var allDay ="";
			var id = "";
			var mem_no = <%=mem_no%>;
			var dept_no = <%=dept_no%>;
			console.log(mem_no);
			console.log(dept_no);
			
			document.addEventListener('DOMContentLoaded', function() {
			  var Calendar = FullCalendar.Calendar;
			  var Draggable = FullCalendar.Draggable;

			  var containerEl = document.getElementById('external-events');
			  var calendarEl = document.getElementById('calendar');
			  var checkbox = document.getElementById('drop-remove');
				
			  // initialize the external events
			  // -----------------------------------------------------------------
			  var all_events = null;
			  
			  all_events = loadingEvents();
			  //console.log("ev: " + all_events);
			  new Draggable(containerEl, {
				  // .fc-event들을 item으로 지정함
			    itemSelector: '.fc-event',
			    eventData: function(eventEl) {
			      return {
			        title: eventEl.innerText
			      };
			    }
			  });

			  // initialize the calendar
			  // -----------------------------------------------------------------

			  	calendar = new Calendar(calendarEl, {
			    headerToolbar: {
			      left: 'prev,next today',
			      center: 'title',
			      right: 'dayGridMonth,timeGridWeek,timeGridDay'
			    },
			    locale : 'ko',	 	// 한글로 지정
			    editable: true,	// 수정 가능 여부 true, false일시에 드래그이벤트 수정 불가(옮기기)
			    droppable: true, // this allows things to be dropped onto the calendar
			    events : all_events, // json 변수를 써야한다(json형태의)
			    //체크박스가 ture일때 해당 객체를 제거한다.
			    drop: function(info) {
			      // is the "remove after drop" checkbox checked?
			      if (checkbox.checked) {
			        // if so, remove the element from the "Draggable Events" list
			        info.draggedEl.parentNode.removeChild(info.draggedEl);
			      }
			    }
			  }); 

			  calendar.render();
			});

			function calendarView(all_events){
				var Calendar = FullCalendar.Calendar;
				  var Draggable = FullCalendar.Draggable;

				  var containerEl = document.getElementById('external-events');
				  var calendarEl = document.getElementById('calendar');
				  var checkbox = document.getElementById('drop-remove');
				  
				  
				  calendar = new Calendar(calendarEl, {
					    headerToolbar: {
					      left: 'prev,next today',
					      center: 'title',
					      right: 'dayGridMonth,timeGridWeek,timeGridDay',
					    },
					    weekNumbers : true,
					    weekNumberCalculation : 0,
					    locale : 'ko',	 	// 한글로 지정
						weekNumbers : false,
					    editable: true,	// 수정 가능 여부 true, false일시에 드래그이벤트 수정 불가(옮기기)
					    droppable: true, // this allows things to be dropped onto the calendar
					    events : all_events, // json 변수를 써야한다(json형태의)
					    eventClick : function(info){
					    	if(!confirm("일정 "+info.event.title+"을 삭제하시겠습니까?")){
					    		return false;
					    	};
			/* 		    	if(!confirm("일정 "+info.event.title+info.event.id+info.event.start+info.event.end+info.event.allDay+"을 삭제하시겠습니까?")){
					    		console.log(info.event.title);
					    		return false;
					    	}; */
					    	removeEvent(info);
					    	info.event.remove(); //화면상에서만 제거
					    	//window.location.reload();
					    },
					    
					    //체크박스가 ture일때 해당 객체를 제거한다.
					    drop: function(info) {
					      // is the "remove after drop" checkbox checked?
					      if (checkbox.checked) {
					        // if so, remove the element from the "Draggable Events" list
					        info.draggedEl.parentNode.removeChild(info.draggedEl);
					      }
					    }
					  });
				  
				  calendar.render();
			}



			// 1. 전체 이벤트 데이터를 추출해야 한다. 
			// 2. ajax로 서버에 전송하여 DB에 저장해야 한다.

			function allSave(){
					//  calender.getEvents() -> Array
					var allEvent = calendar.getEvents();
					console.log(allEvent);
					
					//allEvent._def.extendedProps.appendChild(mem_no);
					//allEvent._def.extendedProps.appendChild(dept_no);
					
					var addevents = new Array();
					//var m = moment();
					// var str = "";
					// allDay 값, title값, instance->range->end, start값필요
					for( var i = 0; i < allEvent.length; i++ ){
						id = allEvent[ allEvent.length -1 ]._def.defId;
						title = allEvent[allEvent.length -1 ]._def.title;
						allDay = allEvent[allEvent.length -1 ]._def.allDay;
						start = allEvent[allEvent.length -1 ]._instance.range.start;
						end = allEvent[allEvent.length -1 ]._instance.range.end; 
						idx = allEvent[allEvent.length -1]._def.extendedProps.idx;
						//mem_no = allEvent[allEvent.length -1]._def.extendedProps.mem_no;
						//dept_no = allEvent[allEvent.length -1]._def.extendedProps.dept_no;
						
						//end = moment(end).format('YYYY/MM/DD hh:mm');
						//console.log( start );
						//console.log( end );
						//console.log("s:" + start);
						//console.log("E:"+end);
						//tochar
						start = moment(start).format('YYYY-MM-DD HH:mm:ss');
						end = moment(end).format('YYYY-MM-DD HH:mm:ss');
						console.log(title);
						console.log(allDay);
						console.log(start);
						console.log(end);
						console.log(idx);
						
						
						addevents.push(title);
						addevents.push(allDay);
						addevents.push(start);
						addevents.push(end);
						addevents.push(idx);
						//addevents.push(mem_no);
						//addevents.push(dept_no);
						
					savedata(addevents);
					window.location.reload();
					return false;
					}

			}; // allSave()

			  function removeEvent(info){
				 /* var infoStart = info.event.start;
				 infoStart = moment(infoStart).format('YYYY-MM-DD hh:mm:ss');
				 var infoEnd = info.event.end;
				 infoEnd = moment(infoEnd).format('YYYY-MM-DD hh:mm:ss'); */
				 var idx = info.event._def.extendedProps.idx;
				 
				$.ajax({
					url: '<%=request.getContextPath()%>/deleteCalendarTest.do',
					type : 'post',
					data : {
						"idx" : idx,
						/* "id" : info.event.id,
						"title" : info.event.title, 
						"allDay" : info.event.allDay,
						"start" : infoStart,
						"end" : infoEnd */
					},
					//async:false,
					success:function(res){
						 alert("일정이 정상적으로 삭제되었습니다.");
					},
					error:function(){},
					dataType: 'json'
				});// ajax

				//});// click function
			};

			  function loadingEvents(){
				var return_value = null;
				$.ajax({
					url : '<%=request.getContextPath()%>/loadCalendarTest.do',
					type : 'post',
					data : {
						"mem_no" : mem_no,
						"dept_no" : dept_no
					},
					//async:false,
					success : function(res){
						return_value = res;
						console.log(return_value);
						calendarView(return_value);
					},
					error : function(){
					},
					dataType : 'json'
				}); //loadingEvents()의 ajax()
			};
			  function savedata(jsondata){
				  console.log(jsondata);
				$.ajax({
					url: '<%=request.getContextPath()%>/calendarTest.do',
					type : 'post',
					data : {
						//"idx" : idx,
						"id" : id,
						"title" : title, 
						"allDay" : allDay,
						"start" : start,
						"end" : end,
						"mem_no" : mem_no,
						"dept_no" : dept_no
 					},
					// async:false,
					success:function(){
						// console.log(res);
						// alert("일정이 정상적으로 추가되었습니다.");
					},
					error:function(){},
					dataType: 'json'
				});// ajax
				
			}// savedata() 
		//} //function calendar
		
		
	</script>
	
</body>
</html>