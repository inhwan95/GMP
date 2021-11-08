<%@page import="java.util.List"%>
<%@page import="ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/custom.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<title>마이페이지</title>
<script src="../js/jquery-3.6.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	
	// 직원 목록 출력하는 (직원정보, 수정, 삭제)버튼 기능
	// 직원 정보 버튼 클릭
	$('#memListBtn').on("click", function(){
		location.href = "<%=request.getContextPath()%>/member/mypage.do";
	});
	
	
	// 수정 버튼 클릭하면 수정폼 출력
	$('#updateBtn').on("click",function(){
		location.href = "<%=request.getContextPath()%>/member/memberUpdate.do";
	});
	
	$('#deleteBtn').on("click",function(){
		location.href = "<%=request.getContextPath()%>/member/memberDelete.do"
	});
	
	// 탈퇴 버튼 클릭하면 탈퇴 완료 후 로그인 페이지로 이동
	$('#deleteBtn').on("click",function(){
		no = $('#mem_no').val();
		
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
			error : function () {},
			dataType : 'text'
				
		});
	
	});
	
// 	$("#deleteBtn").on("click", function(){
// 		$("#memberForm").attr("method", "post");
<%-- 		$("#memberForm").attr("action", "<%=request.getContextPath()%>/member/memberDelete.do"); --%>
// 		$("#memberForm").submit();  // form데이터 전송
// 	});
	
	
});

</script>
</head>
<body>

<%
	System.out.println("jsp 넘어왔어요");
	MemberVO memberInfo = (MemberVO)request.getAttribute("memberInfo");
	System.out.println(memberInfo);
	System.out.println("이거 나오면 이상없음");
%>

<form  id="memberForm" >
<%-- <input type="hidden" id="mem_no" name="mem_no" value="<%=memberInfo.getMem_no()%>"/> --%>

<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
	<thead>
		<tr>
			<th colspan="3"><h3>나의 정보</h3></th>
		</tr>
	</thead>
	<tr>
		<td>직원번호</td>
		<td><%=memberInfo.getMem_no() %></td>
	</tr>
	<tr>
		<td>부서번호</td>
		<td><%=memberInfo.getDept_no() %></td>
	</tr>

	<tr>
		<td>직급번호</td>
		<td><%=memberInfo.getPosi_no() %></td>
	</tr>
	<tr>
		<td>직원명</td>
		<td><%=memberInfo.getMem_nm() %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%=memberInfo.getMem_tel() %></td>
	</tr>
	<tr>
		<td>기본주소</td>
		<td><%=memberInfo.getMem_addr1() %></td>
	</tr>
	<tr>
		<td>상세주소</td>
		<td><%=memberInfo.getMem_addr2() %></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><%=memberInfo.getMem_birth() %></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=memberInfo.getMem_id() %></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%=memberInfo.getMem_mail() %></td>
	</tr>
	<tr>
		<td>입사일</td>
		<td><%=memberInfo.getHire() %></td>
	</tr>
	<tr>
		<td>퇴사일</td>
		<td><%=memberInfo.getRetire() %></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;">
			<input type="button" id="updateBtn" value="수정"/>
			<input type="button" id="deleteBtn" value="탈퇴"/>
		</td>
	</tr>
</table>
</form>

</body>
</html>