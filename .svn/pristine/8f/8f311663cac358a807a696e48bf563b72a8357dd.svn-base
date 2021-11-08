<%@page import="ddit.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@200&display=swap"
	rel="stylesheet">
<script src="../js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../css/board.css">
<script src="../js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="../js/board.js"></script> -->
<style>
/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 550px
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* On small screens, set height to 'auto' for the grid */
@media screen and (max-width: 767px) {
	.row.content {
		height: auto;
	}
}

#divsel {
	background-color: rgb(255 255 255/ 53%);
	position: relative;
}

#divsel::before {
	background-image: url(../images/company.JPG);
	content: '';
	opacity: 0.5;
	position: absolute;
	top: 0px;
	left: 0px;
	right: 0px;
	bottom: 0px;
}

#containerdiv {
	
}
</style>
	<script type="text/javascript">
// 	function name(result){
		
// 	}
//  let re_value = null;
 

			$('#freeBtn').on('click', freeList);
			$('#notiBtn').on('click', noticeList);
			
  	/////////////////////////////////////////

  	function noticeList(){
	 $.ajax({
	      url : '<%=request.getContextPath()%>/board/board.do',
	      type : 'post',        
	      data : {
	    	 "choice" : "공지"
	      },
	      success : function(res){
	    	  console.log(res);
	    	  let str = "";
				str += "<ol>";
			$.each(res, function(i,v){
				str += "<li>";
				str += "제목 : " + v.board_title;
				str += "<br>";
				str += "저자 : " + v.board_writer;
				str += "<br><hr>";
				str += "</li>";
			});
				str += "</ol>";
				str += "<input type='button' class='boardInsertBtn' value='게시글 추가'></input>";
				$("#myDiv").html(str);  
				
				$('.boardBtn').on('click', function() {
					let str = "";
				 					str += "<form action='<%=request.getContextPath()%>/board/boardInsert.do' method='post'>";
										str += "<input type='text' placeholder='게시물 유형' id='board_nm' name='board_nm' maxlength='20'>";
										str += "<input type='text' placeholder='게시물 제목' id='board_title' name='board_title' maxlength='20'>";
										str += "<input type='text' placeholder='글쓴이' id='board_writer' name='board_writer' maxlength='20'>";
										str += "<input type='text' placeholder='게시물 내용' id='board_content' name='board_content' maxlength='20'>";
										
										str += "<input type='submit' value='추가'></input>";
										str += "</form>";
										console.log(str);
										$("#myDiv").html(str);  						
				});
				
	        },
	        error :function(xhr){
				console.log(xhr);
	        },
	     dataType:'json'
	    });
	  }
  	/////////////////////////////////////////
			function freeList(){
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
							str += "<ol>";
 						$.each(res, function(i,v){
//  							str += i + "번째 자료<br>";
							str += "<li>";
 							str += "제목 : " + v.board_title;
 							str += "<br>";
 							str += "저자 : " + v.board_writer;
 							str += "<br><hr>";
							str += "</li>";
 						});
							str += "</ol>";
							str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
							$("#myDiv").html(str);  
							$('.boardInsertBtn').on('click', boardInsert);
				        },
				        
				        error :function(xhr){
							console.log(xhr);
							console.log(xhr.status);
				        }
				    });
				  }
			
			
			
			function boardInsert(){
				let str = "";
<%-- 				str += "<form action='<%=request.getContextPath()%>/board/boardInsert.do' method='post'>"; --%>
				str += "<input type='text' placeholder='게시물 유형' id='board_nm' name='board_nm' maxlength='20'>";
				str += "<input type='text' placeholder='게시물 제목' id='board_title' name='board_title' maxlength='20'>";
				str += "<input type='text' placeholder='글쓴이' id='board_writer' name='board_writer' maxlength='20'>";
				str += "<input type='text' placeholder='게시물 내용' id='board_content' name='board_content' maxlength='20'>";
				
				str += "<input type='button' id='boardInsert' value='추가'></input>";
// 				str += "</form>";

				$("#myDiv").html(str); 
				
				
				
				$('#boardInsert').on('click', function(){
					let board_nm = $('#board_nm').val();
					let board_title = $('#board_title').val();
					let board_writer = $('#board_writer').val();
					let board_content = $('#board_content').val();
					
					console.log(board_nm);
					
					
					 $.ajax({
					 	url : '<%=request.getContextPath()%>/board/boardInsert.do',
					    type : 'post', 
					    data : {
					    	"board_nm" : board_nm,
					    	"board_title" : board_title,
					    	"board_writer" : board_writer,
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
				

			
  </script>
</head>
<%
HttpSession getsession = request.getSession();
String mem_id = (String) getsession.getAttribute("id");
// List<BoardVO> list = (List<BoardVO>)request.getAttribute("boardList");
// String boardNm = null;
%>

<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"></a>
				<div id="navbar-brand">
					<img src="../images/logo.JPG" width="15%" height="5%"><br>
				</div>
			</div>
			<form action="Login.jsp">
				<div class="collapse navbar-collapse" id="myNavbar">

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
					</ul>
				</div>
			</form>
		</div>
	</nav>



	<div id="containerdiv" class="container-fluid">
		<div class="row content">
			<div id="divsel">
				<!-- style="background-color: rgb(255 255 255 / 53%)" -->
				<div class="col-sm-3 sidenav hidden-xs">
					<h2>Menu</h2>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#section1">Main Page</a></li>
						<li id="company"><a href="#section2">회사정보</a></li>
						<li><a href="#section3">근태관리</a></li>
						<li><a href="#section3">채팅</a></li>
						<li><a href="#section3">Calendar</a></li>
						<li><a href="#section3">전자결재</a></li>
						<li><a href="#section3">회의실</a></li>
						<li id="notiBtn"><a>공지사항</a></li>
						<li id="freeBtn"><a>자유게시판</a></li>
						<li><a href="#section3">관리자 페이지</a></li>
					</ul>
					<br>
				</div>
				<br>

				<article>
					<div class="col-sm-9">
						<div class="well">
							<h4>Na's Company</h4>
							<p>Company Introduction</p>
						</div>
					</div>
				</article>
				<div id="myDiv"></div>

				<div class="row bg">

					<div class="col-sm-4">
						<div class="well">
							<p>공지사항</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="well">
							<p>Calendar</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="well">
							<p>To Do List</p>
						</div>
					</div>

				</div>


			</div>

		</div>

	</div>


	<footer class="container-fluid text-center">
		<p>회사: 대전광역시 중구 대흥동 / 대표 : 이나영</p>
		<p>고객센터 : 1588-1159 / mail : abcd@naver.com</p>
		<p>사업자번호 : 314-86-24510</p>
	</footer>





</body>
</html>
