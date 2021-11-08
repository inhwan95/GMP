<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<script src="js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="./css/bootstrap.css">
<link rel="stylesheet" href="./css/mainPage.css">
<script src="./js/bootstrap.js"></script>
<script type="text/javascript" src="js/moment.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<title>Na's Company</title>
<style type="text/css">
</style>
</head>
<script type="text/javascript">
</script>

<body>
	<!-- header부분 -->
	<nav class="navigation navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <a class="navbar-brand" href="#">Na's Company</a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#"></a>
    </li>
  </ul>
</nav>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"></a>
<!--       <div id="navbar-brand"> -->
<!--       	<img src="../images/logo.JPG" width="15%" height="5%"><br> -->
<!--       </div> -->
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
   <div id="divsel"><!-- style="background-color: rgb(255 255 255 / 53%)" -->
    
	<!-- navigator bar (왼쪽 고정 메뉴) -->
    <div class="col-sm-3 sidenav hidden-xs">
    	<ul class="nav nav-pills nav-stacked">
    		<li role="presentation" class="">
    			<a data-target="#company" role="tab" id="company-tab" data-toggle="tab"
    			aria-controls="company" aria-expanded="false">회사정보</a>
    		</li>
    		<li role="presentation" class="">
    			<a data-target="#mypage" role="tab" id="mypage-tab" data-toggle="tab"
    			aria-controls="mypage" aria-expanded="false">마이페이지</a>
    		</li>
    		<li role="presentation" class="">
    			<a data-target="#chat" role="tab" id="chat-tab" data-toggle="tab"
    			aria-controls="chat" aria-expanded="false">채팅</a>
    		</li>
    		<li role="presentation" class="">
    			<a data-target="#calendar" role="tab" id="calendar-tab" data-toggle="tab"
    			aria-controls="calendar" aria-expanded="false">Calendar</a>
    		</li>
    		<li role="presentation" class="">
    			<a data-target="#document" role="tab" id="document-tab" data-toggle="tab"
    			aria-controls="document" aria-expanded="false">전자결재</a>
    		</li>
    		<li role="presentation" class="">
    			<a data-target="#conference" role="tab" id="conference-tab" data-toggle="tab"
    			aria-controls="conference" aria-expanded="false">회의실</a>
    		</li>
    		<li role="presentation" class="">
    			<a data-target="#board" role="tab" id="board-tab" data-toggle="tab"
    			aria-controls="board" aria-expanded="false">게시판</a>
    		</li>
    		<li role="presentation" class="">
    			<a data-target="#managerPage" role="tab" id="managerPage-tab" data-toggle="tab"
    			aria-controls="managerPage" aria-expanded="false">관리자 페이지</a>
    		</li>
    	</ul>
    
    </div>    	 
  </div>
 </div>
 
	<!-- iframe으로 묶어서 새로운 창 말고 메뉴를 누르면 오른쪽 화면에 뜨게 처리 -->
 <div id="tabList" class="tab-content">
 	<%--  옆에 이미지뜨게 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="img" aria-labelledby="img-tab">
 		<iframe id="imgIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0>
 	<img src="../images/logo.JPG" width="15%" height="5%"><br>
 		</iframe>
 	</div>
 	<%--  회사정보 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="company" aria-labelledby="company-tab">
 		<iframe id="companyIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0>
 		</iframe>
 	</div>
 	<%--  마이페이지 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="mypage" aria-labelledby="mypage-tab">
 		<iframe id="mypageIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0
 		src="<%=request.getContextPath()%>/member/mypage.do">
 		</iframe>
 	</div>
 	<%--  채팅 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="chat" aria-labelledby="chat-tab">
 		<iframe id="chatIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0>
 		</iframe>
 	</div>
 	<%--  Calendar --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="calendar" aria-labelledby="calendar-tab">
 		<iframe id="calendarIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0>
 		</iframe>
 	</div>
 	<%--  전자결재 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="document" aria-labelledby="document-tab">
 		<iframe id="documentIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0
 		src="<%=request.getContextPath()%>/sanction/sanctionDocument.do">>
 		</iframe>
 	</div>
 	<%--  회의실 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="conference" aria-labelledby="conference-tab">
 		<iframe id="conferenceIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0
 		src="<%=request.getContextPath()%>/conference/conferenceList.do">>
 		</iframe>
 	</div>
 	<%--  게시판 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="board" aria-labelledby="board-tab">
 		<iframe id="boardIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0
 		src="<%=request.getContextPath()%>/board/board.do">
 		</iframe>
 	</div>
 	<%--  관리자 페이지 --%>
 	<div role="tabpane1" class="tab-pane fade active in" id="managerPage" aria-labelledby="managerPage-tab">
 		<iframe id="managerPageIframe" width="900" height="1000" frameborder=0
 		framespacing=0 marginheight=0 marginwidth=0 scrolling=0 vspace=0>
 		</iframe>
 	</div>
 </div>
 
 
</div>

<br>


<footer class="container-fluid text-center">
  <p>회사: 대전광역시 중구 대흥동 / 대표 : 이나영</p>
  <p>고객센터 : 1588-1159 / mail : abcd@naver.com</p>	
  <p>사업자번호 : 314-86-24510</p>
</footer>





<script>
  
 
</script>
</body>
</html>