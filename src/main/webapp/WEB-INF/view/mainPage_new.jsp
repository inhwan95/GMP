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
<link href="<%=request.getContextPath() %>/css/mainPage.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=request.getContextPath() %>/css/fonts.css" rel="stylesheet" type="text/css" media="all" />

<script src="../js/jquery-3.6.0.min.js"></script>

</head>
<body>
<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="<%=request.getContextPath() %>/images/lee.JPG" alt="" />
			<h1><a href="#">Na's Company</a></h1>
			<span>I can do it! <a href="http://templated.co" rel="nofollow">You Can do it!</a></span>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#" accesskey="1" title="">Main Page</a></li>
				<li><a href="#" accesskey="2" title="">임직원 소개</a></li>
				<li id="chatBtn"><a title="">채팅</a></li>
				<li><a href="#" accesskey="4" title="">Calendar</a></li>
				<li><a href="#" accesskey="5" title="">전자결재</a></li>
				<li><a href="#" accesskey="5" title="">관리자 페이지</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
			<img src="<%=request.getContextPath() %>/images/main2.JPG" alt="" class="image-full" />
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
		<div id="featured">
			<div class="title">
				<h2>공지사항</h2>
				<span class="byline"> </span>
			</div>
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
		<div id="copyright">
			<p> Na's Company 대표: 이나영 | CS center : 1588-2775</p>
			<span>&copy; 대전광역시 중구 중앙로 76 영민빌딩 4층 | Fax : 042-5555-3221 </a></span>
			<span>&copy;DESIGN BY <a href="http://templated.co" rel="nofollow">Yuri Seo</a>.</span>
		</div>
	</div>
</div>
<%
HttpSession getsession = request.getSession();
String mem_id = (String) getsession.getAttribute("id");
int mem_no = (int)getsession.getAttribute("memNo");
int dept_no = (int)getsession.getAttribute("dept");
System.out.println("mainpage.jsp에서의 mem_id => "+mem_id);
System.out.println("mainpage.jsp에서의 mem_no => "+ mem_no);
// List<BoardVO> list = (List<BoardVO>)request.getAttribute("boardList");
// String boardNm = null;
%>
<script type="text/javascript">
	$('#calendarBtn').on('click', function(){ 
		location.href='<%=request.getContextPath()%>/calendarController.do?mem_no='+<%=mem_no%>+'&dept_no='+<%=dept_no%>;
	});

	$('#chatBtn').on('click', function(){
		location.href='<%=request.getContextPath()%>/chatController.do?mem_no='+<%=mem_no%>+'&dept_no='+<%=dept_no%>;
	});
</script>
</body>
</html>
