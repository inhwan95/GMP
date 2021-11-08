<%@page import="ddit.vo.SanctionDocumentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Na's Company</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="http://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@200&display=swap"
      rel="stylesheet" />
<link rel="stylesheet" href="../css/board.css">

<script src="../js/moment.js"></script>

<script src="../js/jquery-3.6.0.min.js"></script>  
<link rel="stylesheet" href="../summernote/summernote-lite.css">
<script src="../summernote/summernote-lite.js"></script>
<script src="../summernote/lang/summernote-ko-KR.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>

<link href="../css/mainPage.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<style>
.comment:focus {
	outline : none;
}

</style>
</head>

<%
HttpSession getsession = request.getSession();
String mem_id = (String) getsession.getAttribute("id");
SanctionDocumentVO document = (SanctionDocumentVO)request.getAttribute("document");
int mem_no = (int)getsession.getAttribute("memNo");
int select_memNo = 0;
%>

<body>
<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img id="mainPageBtn" onclick="goMain();" src="../images/logo3.JPG" alt="" />
			<h1><a onclick="goMain();" href="#">Na's Company</a></h1>
			<span>I can do it! <a href="" rel="nofollow">You Can do it!</a></span><br><br>
			<span id="logout"><a>♥♡♥♡♥ 퇴근 ♥♡♥♡♥</a></span>
		</div>
		<div id="menu">
			<ul>
<!-- 				<li class="current_page_item"><a href="#" accesskey="1" title="">Main Page</a></li> -->
				<li><a id='staffintroduce' accesskey="2" title="">임직원 소개</a></li>
				<li><a id="mypageBtn" href="#" accesskey="3" title="">마이페이지</a></li>
				<li><a id="noticeBtn" href="#" accesskey="5" title="">공지사항</a></li>
				<li id="chatBtn"><a accesskey="3" title="">채팅</a></li>
				<li id="calendarBtn"><a accesskey="4" title="">Calendar</a></li>
				<li><a id="sanctionBtn" href="#" accesskey="5" title="">전자결재</a></li>
				<li><a id="conferenceBtn" href="#" accesskey="9" title="">회의실 예약</a></li>
				<li><a id="freeBtn" href="#" accesskey="5" title="">자유게시판</a></li>
				<li id="manager"><a>관리자 페이지</a></li>
<!-- 				<li id="conference"><a>회의실</a></li> -->
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="top">
			<div id="banner">
				<img src="../images/main2.JPG" alt="" class="image-full" />
			</div>
			<div id="welcome">
				<div class="title">
					<h2>Na's Company</h2>
					<span class="byline">IT Leading Company</span>
				</div>
				<p> <strong>디지털 정보화 시대에 한발 앞선</strong> 기업의 미래를 열어가는 IT개발 및 유지보수 솔루션 전문기업<a href="http://templated.co" rel="nofollow"></a> Na's Company입니다.  <a href="http://fotogrph.com/"></a> <a href="http://templated.co/license"></a> 안녕하십니까? Na's Company 방문을 환영합니다. Na's Company는 직원의 무한한 발전이라는  목표아래 시스템통합(SI), IT아웃소싱 및 최상의 IT솔루션을 제공하는 u-Business 전문 기업입니다. Na's Company 임직원은 성실한 회사, 신뢰받는 기업이 되고자 끊임없는 기술 개발과 개척정신으로 품질의 고급화를 추구하고 있습니다. 풍부한 사업경험을 바탕으로 최적화된 IT 인프라 서비스를 고객 여러분께 제공할 것이며, 차별화되고 특화된 경쟁력을 기반으로 역량있는 글로벌 기업으로 도약하겠습니다. 직원 여러분의 지속적인 관심과 성원을 부탁드립니다. </p>
				<ul class="actions">
					<li><a href="#" class="button">Etiam posuere</a></li>
				</ul>
			</div>
		</div>
		<div id="featured">
			<div class="title">
				<h2>What's news/Notice</h2>
				<span class="byline"> </span>
			</div>
			<div class="content">
				<ul class="style1">
					<li class="first">
						<p class="date"><a href="#">sept<b>05</b></a></p>
						<h3>11/24 창립기념일 관련 행사 안내</h3>
						<p><a href="#">11/24일 창립기념일 기념품 배포 안내드립니다.</a></p>
					</li>
					<li>
						<p class="date"><a href="#">sept<b>17</b></a></p>
						<h3>부서별 워크숍 일정 안내</h3>
						<p><a href="#">관리부-9/27, </a></p>
					</li>
					<li>
						<p class="date"><a href="#">Jan<b>01</b></a></p>
						<h3>Amet sed volutpat mauris</h3>
						<p><a href="#">Consectetuer adipiscing elit. Nam pede erat, porta eu, lobortis eget, tempus et, tellus. Etiam neque. Vivamus consequat lorem at nisl. Nullam non wisi a sem semper eleifend. Etiam non felis. Donec ut ante.</a></p>
					</li>
					<li>
						<p class="date"><a href="#">Dec<b>31</b></a></p>
						<h3>Sagittis diam dolor amet</h3>
						<p><a href="#">Etiam non felis. Donec ut ante. In id eros. Suspendisse lacus turpis, cursus egestas at sem. Mauris quam enim, molestie. Donec leo, vivamus fermentum nibh in augue praesent congue rutrum.</a></p>
					</li>
				</ul>
			</div>
		</div>
		<div id="copyright">
			<p> Na's Company 대표: 이나영 | CS center : 1588-2775</p>
			<span>&copy; 대전광역시 중구 중앙로 76 영민빌딩 4층 | Fax : 042-5555-3221</span>
			<span>&copy;DESIGN BY <a href="http://templated.co" rel="nofollow">Yuri Seo</a>.</span>
		</div>
	</div>
</div>
<input type="hidden" class="memNo" value="">
<script type="text/javascript">

//임직원소개	
$('#staffintroduce').on('click',function(){
	   let code1 ="<div id='featured-none'>";
	   code1 +="   <div class='title-none'></div>";
	   code1 +="   <div class='content-none'></div>";
	   code1 +="   </div>";
	   
	   $('#featured').html(code1);

// 	   let code2 ="	<div class='banner-none'></div>";	
// 	   $('#banner').html(code2);
	   
	   
	   let code = "";
	   code += "<img src='../images/staff.jpg' style='width:700px; height:450px;'>";
	   code += "";
	   
	   $('#welcome').html(code);
	});




$('#calendarBtn').on('click', function(){ 
    location.href='<%=request.getContextPath()%>/calendarController.do?mem_no='+<%=mem_no%>;
 });
 
 $('#chatBtn').on('click', function(){
    location.href='<%=request.getContextPath()%>/chatController.do?mem_no='+<%=mem_no%>;
 });


//한주연===================================================================

//마이페이지 (로그인한 사원 정보 출력)
$('#mypageBtn').on("click",showInfo);

function showInfo() {
let no ='<%=getsession.getAttribute("memNo") %>';
let id ='<%=getsession.getAttribute("id") %>';

console.log(no);
console.log(id);

let code ="<div id='featured'>";
code +="	<div class='title'></div>";
code +="	<div class='content'></div>";
code +="	</div>";

$('#featured').html(code);

$.ajax({
 url : '<%=request.getContextPath()%>/member/mypage.do',
 type : 'post',
 data : {
    "no" : no,
    "id" : id
 },
 success : function (res) {
    console.log(res);
    console.log(res.mem_no);
    let str = "";
  	   str += "<div id='banner'>";
	   str += "<div class='title'>";
	   str += "<h2>My page</h2>";
	   str += "</div><br><br>";
  
       str += "<table class='table table-hover table-bordered text-center' style='border: 1px solid #dddddd;'>";
       str += "<tr><td>직원번호</td>";
       str += "<td>" + res.mem_no + "</td></tr>";
//        str += "<tr><td>부서번호</td>";
//        str += "<td>" + res.dept_no + "</td></tr>";
//        str += "<tr><td>직급번호</td>";
//        str += "<td>" + res.posi_no + "</td></tr>";
       
       str += "<tr><td>부서명</td>";
       str += "<td>" + res.dept_nm + "</td></tr>";
       str += "<tr><td>직급명</td>";
       str += "<td>" + res.posi_nm + "</td></tr>";

       
       str += "<tr><td>직원명</td>";
       str += "<td>" + res.mem_nm + "</td></tr>";
       str += "<tr><td>전화번호</td>";
       str += "<td>" + res.mem_tel + "</td></tr>";
       str += "<tr><td>기본주소</td>";
       str += "<td>" + res.mem_addr1 + "</td></tr>";
       str += "<tr><td>상세주소</td>";
       str += "<td>" + res.mem_addr2 + "</td></tr>";
       str += "<tr><td>생년월일</td>";
       str += "<td>" + res.mem_birth + "</td></tr>";
       str += "<tr><td>아이디</td>";
       str += "<td>" + res.mem_id + "</td></tr>";
       str += "<tr><td>이메일</td>";
       str += "<td>" + res.mem_mail + "</td></tr>";
       str += "<tr><td>입사일</td>";
       str += "<td>" + res.hire.substring(0,10) + "</td></tr>";

       
       str += "<tr><td colspan='12' style='text-align: center;'>";
       str += "<input type='button' id='updateBtn' class='btn btn-outline-info' value='수정'/>";
//        str += "<input type='button' id='deleteBtn' value='탈퇴'/>";
       str += "</tr></table>";
       
       $('#welcome').html(str);
       $('#updateBtn').on('click', infoUpdate);
//        $('#deleteBtn').on('click', infoDelete);
       
 },
 error : function(xhr) {
    console.log(xhr);
 },
 dataType : 'json'
 
});

}

//마이페이지 수정
function infoUpdate(){
	
	let code = "";
		code += "<div id='banner'>";
		code += "<div class='title'>";
		code += "<h2>My page 수정</h2>";
		code += "</div><br><br>";
		
		code += "<p>기본주소 : <input tupe='text' id='mem_addr1' autocomplete=off  ></p>";
		code += "<p>상세주소 : <input tupe='text' id='mem_addr2' autocomplete=off ></p>";
		code += "<p>전화번호 : <input tupe='text' id='mem_tel' autocomplete=off ></p>";
		code += "<p>메   일  : <input tupe='text' id='mem_mail' autocomplete=off ></p>";
		
	    code += "<input id='submitBtn' type='button' class='btn btn-outline-info' value='저장'/>";
	    code += "<input type='reset' id='mem-update-cancle' class='btn btn-outline-info' value='취소'/>";
    $('#welcome').html(code);
	
	$('#mem-update-cancle').on('click',showInfo);
	
	$('#submitBtn').on("click",function(){
	 
		 let addr1 = $('#mem_addr1').val();
		 let addr2 = $('#mem_addr2').val();
		 let tel = $('#mem_tel').val();
		 let mail = $('#mem_mail').val();
		 let no = '<%=getsession.getAttribute("memNo") %>';
		 console.log(addr1);
		 
		 $.ajax({
		    url :'<%=request.getContextPath()%>/member/memberUpdate.do',
		    type : 'post',
		    data :{
		       "addr1" : addr1,
		       "addr2" : addr2,
		       "no" : no,
		       "tel" : tel,
		       "mail" : mail
		    },
		    success : function(res){
		       alert("회원정보 수정이 완료되었습니다");
		       if(res != null){
		          returnMypage();
		       }
		    },
		    error : function(){
		       console.log(xhr);
		    },
		    dataType : 'json'
		    
		 });
	
	});
}

function returnMypage() {
	location.href = "<%=request.getContextPath()%>/member/mypage.do";
}

//마이페이지 (탈퇴)
function infoDelete() {
	no = $('mem_no').val();
	
	$.ajax({
		 url : "<%=request.getContextPath()%>/member/memberDelete.do",
		 type : 'post',
		 data : {
		    "no" : no
		 },
		 success : function (res) {
		    alert("회원탈퇴가 완료되었습니다");
		    location.href = "<%=request.getContextPath()%>/member/login.do";
		 },
		 error : function () {
		    console.log(xhr);
		 },
		 dataType : 'text'
		    
	});
}


//==================================================================여기서부터 이나영

//----------------------------------------------------------------------------관리자
$('#manager').on('click',function(){
	
	let auth = '<%=(int)getsession.getAttribute("auth") %>';
	
	if (auth == 1) {
		manager();
	}else {
		alert('관리자가 아닙니다♡');		
	}
	
});



	
function manager(){
	let managerCode = "";
		managerCode += "<div id='banner'>";
	    managerCode += "<div class='title'>";
	    managerCode += "<h2>관리자 페이지</h2>";
	    managerCode += "</div><br><br>";

	
	managerCode += "<div class='memBtn'><input type='button' class='button1' id='memLookUp' name='memLookUp' value='직원관리'>";
	managerCode += "<input type='button' class='button1' id='manageNoticeBoard' name='manageNoticeBoard' value='공지사항관리'></div>";
// 	managerCode += "<div id='myDiv' class='col-lg-10' name='myDiv' > </div>";
	
	let code ="<div id='featured'>";
	code +="	<div class='title'></div>";
	code +="	<div class='content'></div>";
	code +="	</div>";
	
	$('#welcome').html(managerCode);	
	$('#featured').html(code);
	
	$('#memLookUp').on('click',memLookUp);
	$('#manageNoticeBoard').on('click',manageNoticeBoard);
}


function manageNoticeBoard(){
	$.ajax({
		url : '<%=request.getContextPath()%>/board/board.do',
		type : 'post',        
		data : {
		 "choice" : "공지"
		},
		 dataType : "json",
		 success : function(res){
			console.log(res);
			let authper = "";

			let str = "";
			str += "<ul class='style2'>";
			
			$.each(res, function(i,v){
				console.log(v.auth);
				if(v.auth=='1'){
					authper = '관리자';
				} else{
					authper = v.board_writer;
				}
				
				str += "<li id= li"+ v.board_no +" class='detail' onclick='f_detail(\""+v.board_no+"\");'>";
				str +="<input type='hidden' id='borNo' name='borNo'value='"+v.board_no+"'>";
				str +="<p class='writer'><a href='#'>"+v.board_no+"<b>"+ authper +"</b></a></p>";
				str +="<h3></h3>";
				str +="<p><a href='#'>"+ v.board_title+"</a></p>";
				str += "</li>";
			});
				str += "</ul>";
				str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
				
				$('.content').html(str);
				$('.boardInsertBtn').on('click', manageBoardInsert);
				
		  },
		    
		    error :function(xhr){
				console.log(xhr);
				console.log(xhr.status);
		    }
	});
}

// 공지사항 추가
function manageBoardInsert(){
	let str = "";
// 		str +="	<select name='board_nm' id='board_nm'>";
// 		str +="		<option value='자유'>자유</option>";
// 		str +="		<option value='공지'>공지</option>";
// 		str +="	</select> &nbsp; &nbsp; ";
		str += "<p class='notice-title'>제목 : &nbsp; &nbsp;&nbsp; &nbsp;";
		str += "<input type='text' placeholder='게시물 제목' id='board_title' name='board_title' autocomplete=off maxlength='20'></p>";
		str += "<textarea class='summernote' id='board_content' name='editordata'></textarea>";

		str += "<div class='manage-board'><input type='button' class='manage-board-btn' id='boardInsert' class='' value='추가'></input>";
		str += "<input type='button' class='manage-board-btn' id='manageBoardList' value='목록'></input></div>";
	
		$('.content').html(str); 
	
		$('.summernote').summernote({
			 height: 150,
			 lang: "ko-KR" 
		  });
		
		$('#manageBoardList').on('click',manageNoticeBoard);
		
		$('#boardInsert').on('click', function(){
		
			let board_title = $('#board_title').val();
			let board_content = $('#board_content').val();
		
			console.log(board_nm);

	
			$.ajax({
				url : '<%=request.getContextPath()%>/board/board.do',
			    type : 'post', 
			    data : {
			    	"choice" : "추가",
			    	"board_nm" : "공지",
			    	"board_title" : board_title,
			    	"board_content" : board_content
			    },
			    success : function(res){
			    	manageNoticeBoard(); 
				},
			    dataType : "json",
			    
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
	}


function memSalary(memNo){
	
	
	
	
	$.ajax({
		url : '<%=request.getContextPath() %>/manage/manage.do',
		type : 'post',
		data : {
			"choice" : "salaryList",
			"memNo" : memNo
		},
		
		success : function(res){
			let code = "";
			code += "<div class='sal-table'><table class='salary-table'><thead><tr><td>구분</td><td>급여액</td><td>지급일</td></tr></thead>";
			code += `<tbody>`;
			$.each(res, function(i,v){
				const n1 = v.salary;
				const option = {
				        maximumFractionDigits: 0
				      };
				const cn1 = 
				    n1.toLocaleString('ko-KR', option);
				console.log(cn1);
				code += "<tr><td>"+v.salary_nm+"</td>";
				code += "<td>"+cn1+"</td>";
				code += "<td>"+v.payday+"</td></tr>";
				
			});
			code += "<tr><td><input type='button 'class='btn btn-outline-info' value='급여지급' id='salary' onclick='salary("+memNo+");'></td>"
			code += "<td colspan='2'><input type='button' class='btn btn-outline-info' value='돌아가기' onclick='deptMemDetail("+memNo+");'></td></tr>";
			code += `</tbody></table></div>`;
			$('#data').html(code);
		},
		dataType : 'json',
		error : function(xhr){
			console.log(xhr);
		}
	});
}

function salary(memNo){
	let code = "";
	code += "<div>";
	code += "<label><input type='radio' name='search_type' value='급여' checked />급여</label>";
	code += "<label><input type='radio' name='search_type' value='보너스' />보너스</label><br>";
	code += "지급금액 : <input type='text' id='salMoney'><input type='button' id='payments' class='btn btn-outline-info' name='payments' onclick='payment("+memNo+");' value='지급'>";
	code += "</div>";
	
	$('#data').html(code);
	
}

function payment(memNo) {
	let salType = $("input[name='search_type']:checked").val();
	let salMoney = $('#salMoney').val();
	
	console.log(salType);
	console.log(salMoney);
	

	$.ajax({
		url : '<%=request.getContextPath() %>/manage/manage.do',	
		type : 'post',
		data : {
			"choice" : "payments",
			"memNo" : memNo,
			"salType" : salType,
			"salMoney" : salMoney
		},
		async:false,
		success : function(res){
			console.log(res);
//				memSalary(memNo);
			deptMemDetail(memNo);
			
		},
		dataType : 'json',
		error : function(xhr){
			console.log(xhr);
		}
	});
}


// 해당부서 직원리스트
function memLookUp(){					
	
			let lookCode ="";
// 			let code ="";
// 			code += "<h3>직원관리</h3>";
// 			$('.title').html(code);
//				lookCode +="<div>직원정보조회</div>";

	$.ajax({
		url : '<%=request.getContextPath() %>/manage/manage.do',
		type : 'post',
		data : {
			"choice" : "departList"
		},
	
		success : function(res){
			console.log(res)
			
			lookCode +="	<div class='dept-select'> <select id='sel1' class='sel1' name='sel1' onchange='departMember()'c style='width:100px;' onclick='departMember();'></div>";
			
			$.each(res, function(i,v){
				lookCode +="				<option value='"+ v.dept_no +"'>"+ v.dept_nm +"</option>";
			});
			
			lookCode +="</select>";
			lookCode +="<div id='bigData' class='bigData' name='bigData'>";
			lookCode +="	<div id='data' class='data' name='data'></div>";
			lookCode +="	<div id='detail' class='detail' name='detail'></div></div>";
		 			
			$('.content').html(lookCode);
			
			
			$('#memLookUp').on('click',memLookUp);
			$('#memSalary').on('click',memSalary);
// 			$('#memWork').on('click',memWork);

		},
		dataType : 'json',
		
		error : function(xhr){
			console.log(xhr);
		}
	});
}

function departMember(){
	
	let department = $("#sel1 option:selected").val();
	
	console.log(department);
	
	$.ajax({
		url :  '<%=request.getContextPath() %>/manage/manage.do',
		type : 'post',
		data : {
			"choice" : "departMember",
			"department" : department
		},
		success : function(res){
			console.log(res);		

			let code = "";
			code += "<table id='dept-mem' width='100px' class='table-wrap'>";
			$.each(res, function(i,v){
				
				code += "<tr class='meminfo' ><td>"+(i+1)+"</td><td class='memNo'><a href='javascript:void(0);' class='meminfo' onclick='deptMemDetail("+v.mem_no+")'>"+v.mem_nm+"</td></tr>";
			});
			
			code += "</tbody>";
			code += "</table>";
			
			$('#data').html(code);
			
		},
		dataType : 'json',
		
		error : function(xhr){
			console.log(xhr);
		}			
	});
}

function deptMemDetail(memNo){
	console.log(memNo);
//		console.log(memNm);
	const memNOInput = document.querySelector(".memNo");
	memNOInput.value= memNo;
	
	 let code = "<br>";
      code +="<div class='memupdate'><input type='button' class='button2' id='updateBtn' onclick='mUpdate("+memNo+");' value='정보 수정'>";
      code +="<input type='button' class='button2' id='infoUpdateBtn' onclick='DPupdate("+memNo+");' value='부서및직급 변경'>";
      code +="<input type='button' class='button2' id='memSalary' name='memSalary' onclick='memSalary("+memNo+");' value='급여관리'>";
      code += "<input type='button' class='button2' id='memberWork' name='memberWork' onclick='memWork("+memNo+");' value='근태관리'></div>";
	
// 	let code = "<br>";
// 	 code +="<div class='memupdate'><input type='button' class='button2' id='updateBtn' onclick='mUpdate("+memNo+");' value='정보 수정'>";
// 	 code +="<input type='button' class='button2' id='infoUpdateBtn' onclick='DPupdate("+memNo+");' value='부서및직급 변경'>";
// 	 code +="<input type='button' class='button2' id='memSalary' name='memSalary' onclick='memSalary("+memNo+");' value='급여관리'>";
// 	 code += "<input type='button' class='button2' id='memberWork' name='memberWork' onclick='memWork("+memNo+");' value='근태관리'></div>";
// 	 code += "<table border='1' id='dept-mem-detail' cellpadding='10' cellspacing='10' width='100px'>";
// 	 code += "<thead><tr><td>직원번호</td><td>이름</td><td>전화번호</td>";
// 	 code += "<td>직급</td><td>부서</td><td>생년월일</td><td>주소</td><td>메일</td>";
// 	 code += "<td>변경 직급</td><td>변경 부서</td><td>변경일</td>";
// 	 code += "</tr></thead><tbody>";
	
	 $.ajax({
		url : '<%=request.getContextPath()%>/manage/manage.do',
		type : 'post',
		async:false,
		data : {
			"choice" : "deptDetail",
			"memNo" : memNo
		},
		success : function(res){
				let dd = res;
				console.log(dd);
			
			$.each(res, function(i,v){
				
				code += "<div class='member-info' id='memBox'><table class='table table-bordered text-center' style='border: 1px solid #dddddd;'>";
	            code += "<tr><td>직원번호</td>";
	            code += "<td>"+v.mem_no+"</td></tr>";
	            code += "<tr><td>이름</td>";
	            code += "<td>"+v.mem_nm+"</td></tr>";
	            code += "<tr><td>전화번호</td>";
	            code += "<td>"+v.mem_tel+"</td></tr>";
	            code += "<tr><td>직급</td>";
	            code += "<td>"+v.posi_nm+"</td></tr>";
	            code += "<tr><td>부서</td>";
	            code += "<td>"+v.dept_nm+"</td></tr>";
	            code += "<tr><td>생년월일</td>";
	            code += "<td>"+v.mem_birth+"</td></tr>";
	            code += "<tr><td>주소</td>";
	            code += "<td>"+v.mem_addr1+" "+v.mem_addr2+"</td></tr>";
	            code += "<tr><td>메일</td>";
	            code += "<td>"+v.mem_mail+"</td></tr>";
	            code += "<tr><td>변경직급</td>";
	            code += "<td>"+v.ch_posi_nm+"</td></tr>";
	            code += "<tr><td>변경부서</td>";
	            code += "<td>"+v.ch_dept_nm+"</td></tr>";
	            code += "<tr><td>변경일</td>";
	            code += "<td>"+v.change_date+"</td></tr>";
				code +="<br><br>";
			});
			
			code += "</table></div>";
			code +="<div id='update' name='update'></div>";
			$('#data').html(code);
			
			
		},
		dataType : 'json',
		error : function(xhr){
			console.log(xhr);
		}
	 });
	
}

function mUpdate(data){
	
	console.log(data);
	
	let code = "";
	code +=`<p>전화번호 :&nbsp; <input type='text' class='textbox'id='telUpdate' name='telUpdate' placeholder="변경할전화번호입력"></p>`;
	code +=`<p>기본주소 :&nbsp; <input type='text' class='textbox' id='addrUpdate1' name='addrUpdate1' placeholder="변경할 기본주소 입력"></p>`;
	code +=`<p>상세주소 :&nbsp; <input type='text' class='textbox' id='addrUpdate2' name='addrUpdate2' placeholder="변경할 상세주소 입력"></p>`;
	code +=`<p>이 메 일 :&nbsp; <input type='text' class='textbox' id='mailUpdate' name='mailUpdate' placeholder="변경할 이메일 입력"></p>`;
	code +=`<div class='textbox1'><input type='button' class='sendBtn' id='send' name='send' value='수정'>`;
	code +="<input type='button' class='sendBtn' id='send-cancle' name='send-cancle' onclick='deptMemDetail("+data+");' value='취소'></div>";
	
	$('#memBox').html(code);
	
}	


// 	$('#send-cancle-Btn').on('click',deptMemDetail(data));
	
// 	$('#send').on('click',function(){
	
// 		let tel = $('#telUpdate').val();
// 		let addr1 = $('#addrUpdate1').val();
// 		let addr2 = $('#addrUpdate2').val();
// 		let mail = $('#mailUpdate').val();
		
// 		$.ajax({
<%-- 			url : '<%=request.getContextPath() %>/manage/manage.do', --%>
// 			type : 'post',
// 			data : {
// 					"choice" : "update",
// 					"tel" : tel,
// 					"addr1" : addr1,
// 					"addr2" : addr2,
// 					"mail" : mail,
// 					"memNO" : data
				
// 			},
// 			success : function(res){
				
// 				if (res < 0 ) {
// 					alert('수정에 실패했습니다.');
// 				}
				
// 				deptMemDetail(data);
			
// 			},
// 			dataType : 'json',
			
// 			error : function(xhr){
// 				console.log(xhr);	
// 			}
// 		});
		
// 	});
// }


function DPupdate(memNo){
	
	console.log(memNo);
	
	let code = `<table><tr>`;
	code += `<td>변경 부서</td><td> <select id='deptChoice' name='deptChoice' onchange='update_cate1()' style='width:140px;' >`;
	code += `<option value='10'>인사부</option>`;
	code += `<option value='20'>개발부</option>`;
	code += `<option value='30'>영업부</option>`;
	code += `<option value='40'>디자인부</option>`;
	code += `<option value='50'>총무부</option>`;
	code += `<option value='60'>마케팅부</option>`;
	code += `<option value='99'>관리부</option></td></tr>`;
	
	code += `<tr><td>변경 직급</td><td> <select id='posiChoice' name='posiChoice' style='width:140px;'>`;
	code += `<option value='1'>사원</option>`;
	code += `<option value='2'>대리</option>`;
	code += `<option value='3'>과장</option>`;
	code += `<option value='4'>차장</option>`;
	code += `<option value='5'>부장</option>`;
	code += `<option value='6'>팀장</option>`;
	code += `<option value='7'>이사</option>`;
	code += `<option value='8'>전무</option>`;
	code += `<option value='9'>부사장</option>`;
	code += `<option value='10'>사장</option></td></tr>`;
	
	
	code += `<tr><td  colspan='2'><input type='button' id='DPUpdate' value='변경'></td></tr> `;
	
	$('#data').html(code);
			
	$('#DPUpdate').on('click',function(){
		
		let deptSelect = $("#deptChoice option:selected").val();
		let posiSelect = $("#posiChoice option:selected").val();
		
		console.log(deptSelect);
		console.log(posiSelect);
		
		$.ajax({
			url : '<%=request.getContextPath() %>/manage/manage.do',
			type : 'post',
			data : {
				"choice" : "DPupdate",
				"deptSelect" : deptSelect,
				"posiSelect" : posiSelect,
				"memNO"	: memNo
			},
			success : function(res){
				console.log(res);

				if (res <= 0 ) {
					alert('수정에 실패했습니다.');
				}
				
				deptMemDetail(memNo);
			},
			dataType : 'json',
			error : function(xhr){
				console.log(xhr);
			}
		});
	});
	
	
}



//-------------------------------------------------------------------------------------회의실
function deleteRes(resNo){
	
	if(!confirm("해당 예약을 취소하시겠습니까?")){
		return false;
	}
	
	
	$.ajax({
		url : '<%=request.getContextPath()%>/conference/conferenceList.do',
		type : 'post',
		data : {
			"choice" : "delete",
			"resNo" : resNo
		},
		success : function(res){
			if (res > 0) {
				alert("삭제 성공");
			} else {
				alert("본인이 예약한 회의실이 아닙니다.!!!");
			}
			showList();
		}, 
		
		dateType : 'json',
		
		error : function(xhr){
			console.log(xhr);
		}
		
	});

}
			
function res(){
	$('#resBtn').on('click',function(){
		let bookcode = "";
		    bookcode +=	"<div id='banner'>";
		    bookcode += "<div class='title'>";
		    bookcode += "<h2>회의실 예약</h2>";
		    bookcode += "</div><br><br>";
		
			bookcode +="	<input type='datetime-local' id='startTime' name='startTime'><br>";
			bookcode +="	<input type='datetime-local' id='endTime' name='endTime'><br>";
			bookcode +="	<select name='conferenceRoom' id='conferenceRoom'>";
			bookcode +="		<option value='1'>회의실1</option>";
			bookcode +="		<option value='2'>회의실2</option>";
			bookcode +="		<option value='3'>회의실3</option>";
			bookcode +="		<option value='4'>회의실4</option>";
			bookcode +="		<option value='5'>회의실5</option>";
			bookcode +="		<option value='6'>회의실6</option>";
			bookcode +="		<option value='7'>회의실7</option>";
			bookcode +="	</select>";
			bookcode +="	<hr>";
			bookcode +="	<input type='button' id='btn' class='btn btn-outline-info' value='예약' >";
			bookcode +="	<input type='button' id='btn' class='btn btn-outline-info' value='목록' onclick='showList(\"\");'></div>";
		$('#welcome').html(bookcode);	
		
		
		$('#btn').on('click', function(){
			
			let startTime = $('#startTime').val();
			let endTime = $('#endTime').val();
			let conference = $("#conferenceRoom option:selected").val();
			console.log(startTime);
			console.log(endTime);
			console.log(conference);
			
			$.ajax({
				url : '<%=request.getContextPath() %>/conference/conferenceList.do',
				type : 'post',
				data : {
					"choice" : "reserve",
					"startTime" : startTime,
					"endTime" : endTime,
					"conferenceRoom" : conference
				},
				success : function(res){
					
					if (res == 0) {
						alert('이미 예약중인 회의실입니다.!!!!');
					}
					
					showList();		
					
				},
				dataType : "json",
				
				error : function(xhr){
					console.log(xhr);
				}
				
			});
		});
	});
}




$('#conferenceBtn').on('click',showList);

function showList(){
	
// 	$('#featured').hide();	
	
	let code ="<div id='featured'>";
	code +="	<div class='title'></div>";
	code +="	<div class='content'></div>";
	code +="	</div>";
	
	$('#featured').html(code);
	
$.ajax({
	url : '<%=request.getContextPath() %>/conference/conferenceList.do',
	type : 'post',
	data : {
		"choice" : "list"
	},
	success : function(res){
		 let code ="";
	 	 code += "<div id='banner'>";
		 code += "<div class='title'>";
		 code += "<h2>회의실 목록</h2>";
		 code += "</div><br><br>";
	 
	     code += "<table class='table table-bordered table-hover' style='text-align: center; border: 1px solid #dddddd'>";
	     code += "<thead>";
		 code += "<tr>";
		 code += "	<th>예약번호</th><th>직원번호</th><th>이 름</th><th>회의실번호</th><th>시작시간</th><th>종료시간</th>";
		 code += "</tr>";
		 code += "</thead>";
		 code += "<tbody>";
		
		$.each(res, function(i,v){
			code +="<tr><td><a href='javascript:void(0);' onclick='deleteRes("+v.res_no+");'>" + v.res_no +"</a></td>";
			code +="<td>" + v.mem_no +"</td>";
			code +="<td>" + v.mem_nm +"</td>";
			code +="<td>" + v.con_no +"</td>";
			code +="<td>" + v.res_start.toString().split(":")[0]+":"+ v.res_start.toString().split(":")[1] +"</td>";
			code +="<td>" + v.res_end.toString().split(":")[0]+":"+ v.res_end.toString().split(":")[1]  +"</td></tr>";
		});
		 code += "<tr><td colspan='6' style='text-align: right;'>";
		    code += "<input type='button' class='btn btn-outline-info' id='resBtn' onclick='res();' value='예약하기'></td></tr></table>"

// 		code += "</tbody></table><input type='button' id='resBtn' onclick='res();' value='예약하기'>";
//			code += "</tbody></table><input type='button' id='conDelBtn' onclick='deleteRes();' value='예약취소'>";
		$('#welcome').html(code);	
		console.log(res);	
	},
	error : function(xhr){
		console.log(xhr);
		console.log(xhr.status);
	},
	dataType:'json'
});
}


function goMain(){
	$.ajax({
		url : '<%=request.getContextPath()%>/calToMain.do',
		type : 'post',
		data : {
			"mem_no" : <%=mem_no%>
		},
		async : false,
		success:function(res){
			location.href ='<%=request.getContextPath() %>/member/login.do?<%="mem_id"%>='+res.mem_id+'&<%="mem_pw"%>='+res.mem_pw+'&<%="dept_no"%>='+res.dept_no+'&<%="mem_nm"%>='+res.mem_nm;
		},
		dataType : 'json'
	});
}


////////////////////////////////////////////////////////////////여기부턴 윤주원

$('#logout').on('click', function(){
			sessionStorage.clear();
			location.href ='<%=request.getContextPath() %>/loginPage.jsp';
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






////////////////////////////////////////////////////////////////여기부턴 이인환


//// 결재 서류

$('#sanctionBtn').on('click', documentList);
// $('#docInsertBtn').on('click', docInsert);

let san_no ="";

// 결재서류 전체 리스트
function documentList() {
	
// 	let code ="<div id='featured-none'>";
// 	code +="	<div class='title-none'></div>";
// 	code +="	<div class='content-none'></div>";
// 	code +="	</div>";
	
// 	$('#featured').html(code);
	
	
	
        let code = "";
	     code += "<div id='banner'>";
	     code += "<div class='title'>";
	     code += "<h2>전자 결재</h2>";
	     code += "</div><br><br>";
	   $('#welcome').html(code);
	   
	   console.log('dddd');
	   
	   $.ajax({
	      url : '<%=request.getContextPath()%>/sanction/sanctionDocument.do',
	      type : 'post',
	      data : {
	         "documentSelect" : "휴가신청서"
	      },
	      dataType : "json",
	      success : function (res) {
	         console.log(res);
	         let str = "";
		         str += "<div id='banner'>";
		  	     str += "<div class='title'>";
		  	     str += "<h2>결재 목록</h2>";
		  	     str += "</div><br><br>";
		         
	          
 			    str += "<div class='insert-btn'><button type='button' class='btn btn-outline-info' id='docConfirm' value='완료' onclick='docBtn(\"완료\")'>완료</button>&nbsp;&nbsp;";
 			    str += "<button type='button' class='btn btn-outline-info' id='docWait' value='대기' onclick='docBtn(\"대기\")'>대기</button>&nbsp;&nbsp;"
 			    str += "<button type='button' class='btn btn-outline-info' id='docRefuse' value='반려' onclick='docBtn(\"반려\")'>반려</button></div>";
		        
		        str += "<table class='table table-hover table-bordered text-center' style='border: 1px solid #dddddd;'>";
		        str += "<thead>";
		        str += "<tr>";
		        str += "   <th id='thName'>결재번호</th><th id='thName'>결재제목</th><th id='thName'>결재구분명</th><th>작성일</th><th>결재승인일</th><th id='thName'>내용</th><th>결재기한</th><th id='thName'>결재상태</th>";
		        str += "</tr>";
		        str += "</thead>";
		        str += "<tbody>";
		            
	         $.each(res, function (i,v) {
        	    str += "<tr id='trDetail' onclick='docDetail(\""+v.san_no+"\");'><td id='tdData'>" + v.san_no + "</td>";
                str += "<td id='tdData'>" + v.san_title + "</td>";
	            str += "<td id='tdData'>" + v.san_nm + "</td>";
	            str += "<td id='tdData'>" + v.san_write_date + "</td>";
	            str += "<td id='tdData'>" + v.san_conf_date + "</td>";
	            str += "<td id='tdData'>" + v.san_content + "</td>";
	            str += "<td id='tdData'>" + v.san_deadline + "</td>";
	            str += "<td id='tdData'>" + v.san_status + "</td></tr>";
	         });
	         str += "<tr><td colspan='8' style='text-align: right;'>";
	         str += "<button type='button' class='btn btn-outline-info' id='docInsertBtn' onclick='docInsert(\"\")'>추가</td></tr></table>";
	         
	         
	         $('#welcome').html(str);
	         $('#docInsertBtn').on('click', docInsert);
	      },
	      error : function (xhr) {
	         console.log(xhr);
	      }
	   });
	   
	   let finalCode = "";
	   finalCode +=	"<div id='featured'>ddd<div>";
		
	   $('#featured').htmle(finalCode);
	   
	}
	
	
//function documentList() {
//// 	let docConfirm = $('#docConfirm').val();
//// 	let docWait = $('#docWait').val();
//// 	let docRefuse = $('#docRefuse').val();
	
//	$.ajax({
<%-- 		url : '<%=request.getContextPath()%>/sanction/sanctionDocument.do', --%>
//		type : 'post',
//		data : {
//			"documentSelect" : "휴가신청서"
//		},
//		dataType : "json",
//		success : function (res) {
//			console.log(res);
//// 			console.log(res[0].san_status);

//			let str = "";
//			str += "<button type-'button' id='docInsertBtn' onclick='docInsert(\"\")'>추가</button>"
//			str += "<button type='button' id='docConfirm' value='완료' onclick='docBtn(\"완료\")'>완료</button>";
//			str += "<button type='button' id='docWait' value='대기' onclick='docBtn(\"대기\")'>대기</button>"
//			str += "<button type='button' id='docRefuse' value='반려' onclick='docBtn(\"반려\")'>반려</button>"
//			str += "<ul>";
	
//			$.each(res, function (i,v) {
//				str += "<li onclick='docDetail(\""+v.san_no+"\");'>";
//				str += "결재번호 : " + v.san_no;
//				str += "<br>";
//				str += "결재제목 : " + v.san_title;
//				str += "<br>";
//				str += "결재구분명 : " + v.san_nm;
//				str += "<br>";
//				str += "작성일 : " + v.san_write_date;
//				str += "<br>";
//				str += "결재승인일 : " + v.san_conf_date;
//				str += "<br>";
//				str += "내용 : " + v.san_content;
//				str += "<br>";
//				str += "결재기한 : " + v.san_deadline;
//				str += "<br>";
//				str += "결재상태 : " + v.san_status;
//				str += "<br><br>";
//				str += "</li>";
//			});
//			str += "</ul>";
//			$('#top').html(str);
			
//// 			console.log($('#docConfirm').val());
//// 			console.log(docWait);
//// 			console.log(docRefuse);
//		},
//		error : function (xhr) {
//			console.log(xhr);
//		}
//	});
	
//}
	
	
function docBtn(result){
	console.log(result);
	$.ajax({
		url : '<%=request.getContextPath() %>/sanction/sanctionDocument.do',
		type : 'post',
		data : {
			"documentSelect" : "결재상태",
			"result" : result
		},
		dataType : 'json',
		success : function(res){
			let str = "";
			str += "<div class='insert-btn'><button type='button' class='btn btn-outline-info' id='docConfirm' value='완료' onclick='docBtn(\"완료\")'>완료</button>";
			str += "<button type='button' class='btn btn-outline-info' id='docWait' value='대기' onclick='docBtn(\"대기\")'>대기</button>"
			str += "<button type='button' class='btn btn-outline-info' id='docRefuse' value='반려' onclick='docBtn(\"반려\")'>반려</button></div>"

			str += "<table class='table table-hover table-bordered text-center' style='border: 1px solid #dddddd;'>";
	        str += "<thead>";
	        str += "<tr>";
	        str += "   <th id='thName'>결재번호</th><th id='thName'>결재제목</th><th id='thName'>결재구분명</th><th>작성일</th><th>결재승인일</th><th id='thName'>내용</th><th>결재기한</th><th id='thName'>결재상태</th>";
	        str += "</tr>";
	        str += "</thead>";
	        str += "<tbody>";
	            
         $.each(res, function (i,v) {
    	    str += "<tr id='trDetail' onclick='docDetail(\""+v.san_no+"\");'><td id='tdData'>" + v.san_no + "</td>";
            str += "<td id='tdData'>" + v.san_title + "</td>";
            str += "<td id='tdData'>" + v.san_nm + "</td>";
            str += "<td id='tdData'>" + v.san_write_date + "</td>";
            str += "<td id='tdData'>" + v.san_conf_date + "</td>";
            str += "<td id='tdData'>" + v.san_content + "</td>";
            str += "<td id='tdData'>" + v.san_deadline + "</td>";
            str += "<td id='tdData'>" + v.san_status + "</td></tr>";
         });
         str += "<tr><td colspan='8' style='text-align: right;'>";
         str += "<button type='button' class='btn btn-outline-info' id='docInsertBtn' onclick='docInsert(\"\")'>추가</td></tr></table>";
         
         
         $('#welcome').html(str);
         $('#docInsertBtn').on('click', docInsert);
      },
		error : function(xhr) {
			console.log(xhr);
		}
			
	});
	
}
	
function docDetail(san_no){
	console.log(san_no);
	
// 	const _data = {
// 			"documentSelect" : "결재서류세부",
// 			"san_no": san_no
// 		}
	$.ajax({
		url : '<%=request.getContextPath()%>/sanction/sanctionDocument.do',
		type : 'post',
		data : {
			"documentSelect" : "결재서류세부",
			"san_no": san_no
		},
		dataType : 'json',
		success : function(res) {
			console.log(res);
			let str = "";
			str += "<table border='1'>";
			str += "<thead>";
			str += "<tr><td rowspan='2' colspan='3' width='500' height='130'>"+ res.san_nm +"</td><td>담당자</td><td>팀장</td><td>부장</td></tr>";
			str += "<tr><td width='110' height='120'>" + "사인" + "</td><td width='110'>사인</td><td width='110'>사인</td></tr>";
			str += "</thead>";
			str += "<tbody>";
			str += "<tr><td  width='130' height='100'>제목</td><td colspan='6'>"+ res.san_title +"</td></tr>";
			str += "<tr><td height='100'>기안날짜</td><td colspan='2'>"+ res.san_write_date +"</td><td>부서명</td><td colspan='2'>"+ res.dept_nm1 +"</td></tr>";
			str += "<tr><td height='100'>담당자</td><td colspan='6'>"+ res.mem_nm1 +"</td></tr>";
			str += "<tr><td height='500'>내용</td><td colspan='6'>"+ res.san_content +"</td></tr>";
			str += "</tbody>";
			str += "</table>";
			str += "";
			str += "<button type='button' class='btn btn-outline-info' onclick='documentList(\"\")'>결재 목록</button>";
			str += "";
			
			$('#welcome').html(str);
		},
		error : function(xhr) {
			console.log(xhr);
		}
			
	});
}
	
// 결재 서류 추가 양식 선택 메소드
function docInsert() {
	
// 	let str = "<table border='none' align='center' width='300' height='80'>";
// 		str += "<tr align='center'><td colspan='2'><input type='text' id='san_per1' placeholder='1번'><input type='text' id='san_per2' placeholder='2번'><input type='text' id='san_per3' placeholder='3번'></td></tr>";
// 			str += "<tr><td colspan='2'>결재구분&nbsp;&nbsp;<select id='san_nm'><option value='휴가신청서'>휴가신청서<option value='회의보고서'>회의보고서<option value='주간업무보고서'>주간업무보고서"
// 			str += "<option value='지출결의서'>지출결의서<option value='기안서'>기안서<option value='품의서'>품의서<option value='사직서'>사직서</td></tr>";
// 			str += "<tr><td>직책&nbsp;&nbsp;<input type='text' id='san_position'></td><td>부서&nbsp;&nbsp;<input type='text' id='san_dep'></td></tr>";
// 			str += "<tr><td>작성자&nbsp;&nbsp;<input type='text' id='san_writer'></td><td>결재기한&nbsp;&nbsp;<input type='text' id='san_deadline'></td></tr>";
// 			str += "<tr><td colspan='2'>제목&nbsp;&nbsp;<input type='text' id='san_title'></td></tr>";
// 			str += "<tr><td colspan='2'>내용&nbsp;&nbsp;<input type='text' id='san_content'></td></tr>";
	
	let str = "";
	str += "<div id='banner'>";
    str += "<div class='title'>";
    str += "<h2>결재서류 작성</h2>";
    str += "</div><br><br>";

			str += "<div class='ducument-name-select'>결재 문서 종류 : <select name='document-name' id='document-name' onchange='insert_document()' onclick='insert_document();'><br>";
			str += "	<option value='휴가신청서'>휴가신청서</option>";
			str += "	<option value='회의보고서'>회의보고서</option>";
			str += "	<option value='주간업무보고서'>주간업무보고서</option>";
			str += "	<option value='지출결의서'>지출결의서</option>";
			str += "	<option value='기안서'>기안서</option>";
			str += "	<option value='품의서'>품의서</option>";
			str += "	<option value='사직서'>사직서</option>";
			str +="</div></select>"
			str +="<div id='ducument' class='ducument' ></div>";
	
			$('#welcome').html(str);

}

// 결재 서류 추가
function insert_document(){
	
	let selec_document = $("#document-name option:selected").val();
	let name ='<%=getsession.getAttribute("name")%>';
	let dept = '<%=getsession.getAttribute("dept")%>';
	let dept_nm = '<%=getsession.getAttribute("deptName")%>';
	
	console.log(dept_nm);
	
		let str = "";
		$.ajax({
			url : '<%=request.getContextPath()%>/manage/manage.do',
			type : 'post',
			data : {
				"choice" : "memList"
			},
			success : function(res){
				console.log(res);	
				
				str += "<table border='1' class='sanction-box'>";
				str += "<thead >";
				str += "<tr><td rowspan='2' colspan='3' width='500' height='130'>"+ selec_document +"</td>";
				str += "<td width='15%'>담당자</td><td width='15%'>결재자1</td><td width='15%'>결재자2</td></tr>";
				str += "<tr><td width='15%' height='100'><input type='text' id='sanction-name' name='sanction-name' class='document-text' value='"+name+"'></td>";
				str += "<td width='15%'><select name='teamLeader1' id='teamLeader1' class='document-approver'>";
					$.each(res, function(i,v){
						str += "<option value='"+ v.mem_no +"'>"+v.posi_nm+"_"+ v.mem_nm +"</option>";
					});

				str += "</select></td>";
				str += "<td width='15%'><select name='teamLeader2' id='teamLeader2' class='document-approver'>";
					
					$.each(res, function(i,v){
						str += "<option value='"+ v.mem_no +"'>"+v.posi_nm+"_"+ v.mem_nm +"</option>";
					});
				
				str += "</select></td></tr>";

//					str += "<tr><td width='110' height='120'>" + "사인" + "</td><td width='110'>사인</td><td width='110'>사인</td></tr>";
				str += "</thead>";
				str += "<tbody>";
				str += "<tr><td  width='130' height='100' colspan='2'>제목</td><td colspan='4'><input type='text' id='document-title' name='document-title' class='document-text' ></td></tr>";
				str += "<tr><td height='100'>기안날짜</td><td colspan='2'><input type='datetime-local' id='document-deadline' name='document-deadline' style='border: none;'></td>";
				str += "<td>부서명</td><td colspan='2'>"+ dept_nm +"</td></tr>";
				str += "<tr><td height='100'>담당자</td><td colspan='6'><p id='memName'>"+ name +"</p></td></tr>";
				str += "<tr><td height='500'>내용</td><td colspan='6'><input type='text' id='document-content' name='document-content' class='document-text' ></td></tr>";
				str += "</tbody>";
				str += "</table>";

				str += "<button type='button' class='btn btn-outline-info' onclick='documentList(\"\")'>결재 목록</button>";
	
				str += "<button type='button' class='btn btn-outline-info' onclick='real_insert_document();' value='추가' id='docuInsert'>추가";
				
				$('#ducument').html(str);	
				
			},
			dataType : 'json',
			error : function(xhr){
				console.log(xhr);
			}
			
		});
}



function real_insert_document(){
	
	let san_nm = $("#document-name option:selected").val();
	let san_content =$('#document-content').val();
		
	let san_deadline = $('#document-deadline').val();
	let san_title = $('#document-title').val();
	
	let mem_no2 =  $("#teamLeader1 option:selected").val();
	let mem_nm2 = $('#teamLeader1 option:selected').text();

	let mem_no3 = $('#teamLeader2 option:selected').val();
	let mem_nm3 = $('#teamLeader2 option:selected').text();
	console.log(mem_nm3);
	
	let mem_no = '<%=getsession.getAttribute("memNo")%>';
	let mem_nm = '<%=getsession.getAttribute("name")%>';
		console.log(mem_no);
	
	$.ajax({
		url : '<%=request.getContextPath() %>/sanction/sanctionDocument.do',
		type : 'post',
		data : {
			"documentSelect" : "추가",
			"san_nm" : san_nm,
			"san_content" : san_content,
			"san_deadline" : san_deadline,
			"san_title" : san_title,
			"mem_nm2" : mem_nm2,
			"mem_no2" : mem_no2,
			"mem_nm3" : mem_nm3,
			"mem_no3" : mem_no3,
			"mem_no" : mem_no,
			"mem_nm" : mem_nm
		},
		success : function(res){
			console.log(res);	
			
			documentList();
			
		},
		dataType : 'json',
		error : function(xhr){
			
		}
		
	});
	
	
	
	
	
	
	
	
}


//------------------------------------------------------------------
//여기부턴 게시판

$('#freeBtn').on('click', freeList);
$('#noticeBtn').on('click', noticeList);
	let board_noArr = new Array();
	
	let fonts = ['맑은 고딕', '돋움', '궁서', '굴림', '굴림체', '궁서체', '나눔 고딕', '바탕', '바탕체', '새굴림', 'HY견고딕', 'HY견명조', 'HY궁서B', 'HY그래픽M', 'HY목각파임B', 'HY신명조', 'HY얕은샘물M', 'HY엽서L', 'HY엽서M', 'HY중고딕', 'HY헤드라인M', '휴먼매직체', '휴먼모음T', '휴먼아미체', '휴먼둥근헤드라인', '휴먼편지체', '휴먼옛체'];

let board_no1 = "";

function noticeList(){
	let code ="<div id='featured-none'>";
	code +="	<div class='title-none'></div>";
	code +="	<div class='content-none'></div>";
	code +="	</div>";
	
	$('#featured').html(code);
	
	$.ajax({
		url : '<%=request.getContextPath()%>/board/board.do',
		type : 'post',        
		data : {
		 "choice" : "공지"
		},
		 dataType : "json",
		 success : function(res){
			console.log(res);
			console.log(res[0].board_date);
			let time = res[0].board_date.toString().substring(5,7);
			console.log(time);
			
			
			let str = "";
			str += "<div class='title'>";
			str += "<h2>What's news/Notice</h2>";
			str += "<span class='byline'></span>";
			str += "</div>";
			str += "<div class='content'>";
			str += "<ul class='style1'>";
			$.each(res, function(i,v) {
// 				let time = res[0].board_date.toString().substring(8,10);
				let mon = v.board_date.toString().substring(5,7);
				if(mon=='01'){
					mon = 'Jan.';
				} else if(mon=='02') {
					mon = 'Feb.';
				} else if(mon=='03') {
					mon = 'Mar.';
				} else if(mon=='04') {
					mon = 'Apr.';
				} else if(mon=='05') {
					mon = 'May.';
				} else if(mon=='06') {
					mon = 'Jun.';
				} else if(mon=='07') {
					mon = 'Jul.';
				} else if(mon=='08') {
					mon = 'Aug.';
				} else if(mon=='09') {
					mon = 'Sep.';
				} else if(mon=='10') {
					mon = 'Oct.';
				} else if(mon=='11') {
					mon = 'Nov.';
				} else if(mon=='12') {
					mon = 'Dec.';
				}
				
				str += "<li class='first' class='detail' onclick='f_detail2(\""+v.board_no+"\");'>";
				str += "<p class='date'><a href='#'>"+ mon +"<b>"+ v.board_date.toString().substring(8,10) +"</b></a></p>";
				str += "<h3>"+ v.board_title +"</h3>";
				str += "<p><a href='#'>"+ v.board_content.substring(0,80) +"...</a></p>";
				str += "</li>";
				str += "";
			});
			str += "</ul>";
			str += "</div>";
			$('#welcome').html(str);

				
		  },
		    
		    error :function(xhr){
				console.log(xhr);
				console.log(xhr.status);
		    }
	});

}
/////////////////////////////////////////


// 자유 게시판 클릭
function freeList(){
	
	let code ="<div id='featured'>";
	code +="	<div class='title'></div>";
	code +="	<div class='content'></div>";
	code +="	</div>";
	
	$('#featured').html(code);
	
	
	
$.ajax({
  url : '<%=request.getContextPath()%>/board/board.do',
  type : 'post', 
  data : {
     "choice" : "자유"
     },
dataType : "json",
  success : function(res){
      console.log(res);
         
      let str = "";
      str += "<div id='banner'>";
	  str += "<div class='title'>";
	  str += "<h2>자유 게시판</h2>";
	  str += "</div><br><br>";
      
      str += "<table class='table table-hover table-bordered text-center' style='border: 1px solid #dddddd;'>";
      str += "<thead>";
      str += "<tr>";
      str += "   <th>글번호</th><th>제목</th><th>저자</th>";
      str += "</tr>";
      str += "</thead>";
      str += "<tbody>";
      
      $.each(res, function(i,v){
  	    board_noArr.push( v.board_no );
//       str += "<li id= li"+ v.board_no +" class='detail' onclick='f_detail(\""+v.board_no+"\");'>";
//       str +="<input type='hidden' id='borNo' name='borNo'value='"+v.board_no+"'>";
         str += "<tr onclick='f_detail(\""+v.board_no+"\");'><td class='detail'>" + v.board_no + "</td>";
         str += "<input type='hidden' id='borNo' name='borNo' value='"+v.board_no+"'>";
         str += "<td>" + v.board_title + "</td>";
         str += "<td>" + v.board_writer + "</td></tr>";
      });
    
      str += "<div class='boardAdd'><button type='button' class='btn btn-outline-info' id='boardInsertBtn'>게시글추가</div>";
       
      $('#welcome').html(str);
      $('#boardInsertBtn').on('click', boardInsert);
      
      
    },
    
    error :function(xhr){
      console.log(xhr);
      console.log(xhr.status);
    }
});
}

// function freeList(){
// $.ajax({
<%--   url : '<%=request.getContextPath()%>/board/board.do', --%>
//   type : 'post', 
//   data : {
// 	  "choice" : "자유"
// 	  },
// dataType : "json",
//   success : function(res){
// 		console.log(res);
			
// 		let str = "";
// 		str += "<ol>";
// 		$.each(res, function(i,v){
// 		board_noArr.push( v.board_no );
// 		str += "<li id= li"+ v.board_no +" class='detail' onclick='f_detail(\""+v.board_no+"\");'>";
// 		str +="<input type='hidden' id='borNo' name='borNo'value='"+v.board_no+"'>";
// 			str += "제목 : " + v.board_title;
// 			str += "<br>";
// 			str += "저자 : " + v.board_writer;
// 			str += "<br><hr>";
// 		str += "</li>";
// 		});
// 		str += "</ol>";
// 		str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
		
// 		$('#top').html(str);
// 		$('.boardInsertBtn').on('click', boardInsert);
		
		
//     },
    
//     error :function(xhr){
// 		console.log(xhr);
// 		console.log(xhr.status);
//     }
// });
// }

function f_detail2(board_no){
board_no1 = board_no;
	console.log("f_detail" + board_no);
	$.ajax({
	url : '<%=request.getContextPath() %>/board/board.do',
	    type : 'post', 
	    data : {
	    	"choice" : "세부",
	    	"board_no"	 : board_no
	    },
	    dataType : "json",
	    success : function(res){
	    	let str = "";
	    	str += "<div id='banner'>";
	    	str += "<div class='title'>";
	    	str += "<h2>게시글 내용</h2>";
	    	str += "</div><br><br>";

	        str += "<div class='boardDelBtn'><input type='button' class='boardDeleteBtn btn btn-outline-info' value='목록' onclick='noticeList();'/></div>";
	    	str += "<table class='table table-bordered text-center' >";
			str += "<tr><td colspan='2'><h5>제목</h5></td>";
			str += "<td colspan='2'>" + res.board_title + "</td></tr>";
			str += "<tr><td><h5>저자</h5></td>";
			str += "<td>" + res.board_writer + "</td>";
			str += "<td><h5>날짜</h5></td>";
			str += "<td>" + res.board_date + "</td></tr>";
			str += "<tr><td colspan='2'><h5>내용</h5></td>";
			str += "<td colspan='2'>" + res.board_content + "</td></tr></table>";
			str += "<div id='boardComment'>";
			
			str += "</div><br>";
			commentList(board_no);
			$('#welcome').html(str);
			
				},
	    error : function(xhr) {
	    	console.log(xhr);
	    	console.log(xhr.status);
	    }

});
}

function f_detail(board_no){
board_no1 = board_no;
	console.log("f_detail" + board_no);
	$.ajax({
	url : '<%=request.getContextPath() %>/board/board.do',
	    type : 'post', 
	    data : {
	    	"choice" : "세부",
	    	"board_no"	 : board_no
	    },
	    dataType : "json",
	    success : function(res){
	    	let str = "";
	    	str += "<div id='banner'>";
	    	str += "<div class='title'>";
	    	str += "<h2>게시글 내용</h2>";
	    	str += "</div><br><br>";

	        str += "<div class='boardDelBtn'><input type='button' class='boardDeleteBtn btn btn-outline-info' value='게시글 삭제' onclick='boardDelete(\""+board_no+"\");'/></div>";
	    	str += "<table class='table table-bordered text-center' >";
			str += "<tr><td colspan='2'><h5>제목</h5></td>";
			str += "<td colspan='2'>" + res.board_title + "</td></tr>";
			str += "<tr><td><h5>저자</h5></td>";
			str += "<td>" + res.board_writer + "</td>";
			str += "<td><h5>날짜</h5></td>";
			str += "<td>" + res.board_date + "</td></tr>";
			str += "<tr><td colspan='2'><h5>내용</h5></td>";
			str += "<td colspan='2'>" + res.board_content + "</td></tr></table>";
// 		    str += "<tr><td colspan='4' style='text-align'='right';>";
	    	
	    	
// 			str += "<ul>";
// 			str += "<li>";
// 			str += "제목 : " + res.board_title;
// 			str += "<br>";
// 			str += "저자 : " + res.board_writer;
// 			str += "<br>";
// 			str += "내용 : " + res.board_content;
// 			str += "<br>";
// 			str += "날짜 : " + res.board_date;
// 			str += "<br>";
		
// 			str += "<br><hr>";
// 			str += "</li>";
// 			str += "</ul><br>";
			str += "<div id='boardComment'>";
			
			str += "</div><br>";
			commentList(board_no);
			$('#welcome').html(str);
			
// 			str += "<input type='button' class='boardDeleteBtn' value='게시글 삭제' onclick='boardDelete(\""+board_no+"\");'/></div>";
// 			$('#top').html(str);
			
				},
	    error : function(xhr) {
	    	console.log(xhr);
	    	console.log(xhr.status);
	    }

});
}

function commentList(board_no){
$.ajax({
	url : '<%=request.getContextPath()%>/board/board.do',
	    type : 'post', 
	    data : {	// 서블릿으로 보내줄거만 데이터로
	    	"choice" : "댓글리스트",
	    	"board_no" : board_no
	    },
        dataType : "json",
	    success : function(res){
	    	console.log(res);
		 	let str = "";
// 			str += "<ul>";
			$.each(res, function(i,v){
				str += "<div class='commentBox'><div class='commentList'>"
				str += "<div>" + v.mem_nm + "</div>";
				str += "<div>" + v.comm_content + "</div>";
				str += "<div>" + v.comm_time + "</div>";
				str += "<input type='button' class='boardCommentDeleteBtn btn btn-outline-info' value='삭제' onclick='boardCommentDelete(\""+v.comm_no+"\");'/>";
				str += "</div>";
				
// 				str += "<li>";
// 				str += "작성자 - " + v.mem_nm;
// 				str += "<br>";
// 				str += "날짜 - " + v.comm_time;
// 				str += "<br>";
// 				str += "내용 - " + v.comm_content;
// 				str += "<br>";
// 				str += "<input type='button' class='boardCommentDeleteBtn' value='댓글 삭제' onclick='boardCommentDelete(\""+v.comm_no+"\");'/>";
// 				str += "</li>";
			});
			str += "</ul><br>";
			//텍스트 추가할까?
				str += "<div class='commentInsert'><textarea id='comment' class='comment' name='comment'";
				str += "  autofocus required wrap='hard' style='width: 350px; resize: none; padding:20px; height: 30px;'></textarea>";
				str += "<div><input type='button' class='boardCommentBtn btn btn-outline-info' value='등록' onclick='boardCommentInsert(\""+board_no+"\");'></div></div>";
			$('#boardComment').html(str);
					
// 			str += "<textarea id='comment' class='comment' name='comment'";
// 				str += "  autofocus required wrap='hard' style='width: 350px; resize: none; padding:20px; height: 30px;'></textarea>";
// 				str += "<div><input type='button' class='boardCommentBtn' value='댓글 추가' onclick='boardCommentInsert(\""+board_no+"\");'>";
// 			$('#boardComment').html(str);
		},
        
		error : function(xhr){
			console.log(xhr);
		}
	});


}

function boardCommentDelete(comm_no){
$.ajax({
 	url : '<%=request.getContextPath()%>/board/board.do',
	    type : 'post', 
	    data : {
	    	"choice" : "댓글삭제",
	    	"comm_no" : comm_no
	    },
	    success : function(res){
	    	f_detail(board_no1);
		},
        dataType : "json",
        
		error : function(xhr){
			console.log(xhr);
		}
	});
}

function boardCommentInsert(board_no){
let board_comm = $('#comment').val();

$.ajax({
 	url : '<%=request.getContextPath()%>/board/board.do',
	    type : 'post', 
	    data : {
	    	"choice" : "댓글추가",
	    	"board_no" : board_no,
	    	"board_comm" : board_comm
	    },
	    success : function(res){
	    	f_detail(board_no);
//				window.reload();
		},
        dataType : "json",
        
		error : function(xhr){
			console.log(xhr);
		}
	});


}

function boardInsert(){
	let str = "";
	str += "<div id='banner'>";
	str += "<div class='title'>";
	str += "<h2>자유 게시글 작성</h2>";
	str += "</div><br><br>";

	str +="	<select name='board_nm' id='board_nm'>";
	str +="		<option value='자유'>자유</option>";
	str +="		<option value='공지'>공지</option>";
	str +="	</select> &nbsp; &nbsp; ";
	str += "<input type='text' placeholder='게시물 제목' id='board_title' name='board_title' maxlength='20'><br>";
	str += "<textarea class='summernote' id='board_content' name='editordata'></textarea>";
	
	str += "<input type='button' id='boardInsert' value='추가'></input><br>";
	
	$('#welcome').html(str); 
	
	$('.summernote').summernote({
		 height: 150,
		 lang: "ko-KR" 
	  });
			
	$('#boardInsert').on('click', function(){
		let board_nm = $('#board_nm').val();
		let board_title = $('#board_title').val();
		let board_content = $('#board_content').val();
		
		console.log(board_nm);
		
		
		$.ajax({
			url : '<%=request.getContextPath()%>/board/board.do',
		    type : 'post', 
		    data : {
		    	"choice" : "추가",
		    	"board_nm" : board_nm,
		    	"board_title" : board_title,
		    	"board_content" : board_content
		    },
		    success : function(res){
				freeList(); 
			},
		    dataType : "json",
		    
			error : function(xhr){
				console.log(xhr);
			}
		});
	});
}



function boardDelete(board_no){
console.log("보드넘버"+board_no);
$.ajax({
	url : '<%=request.getContextPath()%>/board/board.do',
    type : 'post', 
    data : {
		"choice" : "삭제",
		"board_no" : board_no
    },
    dataType : "json",
    success : function(res){
    	console.log('아무거나');
		freeList();
	},
    
	error : function(xhr){
		console.log(xhr);
	}
});
}
	
</script>



</body>
</html>
