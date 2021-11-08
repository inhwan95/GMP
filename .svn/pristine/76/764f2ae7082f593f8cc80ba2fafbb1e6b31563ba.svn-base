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
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	
	let addr1 = "";
	let addr2 = "";
	let tel = "";
	let no = "";
	
	// '수정'버튼 눌렀을때 (저장, 취소, 직원목록)버튼 기능
	$("#submitBtn").on("click", function() {

		addr1 = $("#mem_addr1").val();
		addr2 = $("#mem_addr2").val();
		tel = $("#mem_tel").val();
		no = $("#mem_no").val();
		
		$.ajax({
			url :'<%=request.getContextPath()%>/member/memberUpdate.do',
			type : 'post',
			data :{
				"addr1" : addr1,
				"addr2" : addr2,
				"no" : no,
				"tel" : tel
			},
			success : function(res){
				alert("회원정보 수정이 완료되었습니다");
				if(res != null){
					returnMypage();
				}
			},
			error:function(){},
			dataType : 'text'
			
		});
	
	});
	
	function returnMypage(){
		location.href = "<%=request.getContextPath()%>/member/mypage.do";
	};
	
	
});

</script>


</head>
<body>
<%
	MemberVO memberInfo = (MemberVO)request.getAttribute("memVo");
%>


<!-- 직원 정보 수정 버튼 -->
<form id="memberForm">
<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
	<thead>
		<tr>
			<th colspan="3"><h3>직원 정보 수정</h3></th>
		</tr>
	</thead>
<tr>
	<td>직원번호</td>
	<td>
		<input type="text" name="mem_no" id="mem_no" value="<%=memberInfo.getMem_no() %>">
	</td>
</tr>
<tr>
	<td>부서번호</td>
	<td>
		<input type="text" name="dept_no" id="dept_no" value="<%=memberInfo.getDept_no() %>">
	</td>
</tr>
<tr>
	<td>직급번호</td>
	<td>
		<input type="text" name="posi_no" id="posi_no" value="<%=memberInfo.getPosi_no() %>">
	</td>
</tr>
<tr>
	<td>직원명</td>
	<td>
		<input type="text" name="mem_nm" id="mem_nm" value="<%=memberInfo.getMem_nm() %>">
	</td>
</tr>
<tr>
	<td>전화번호</td>
	<td>
		<input type="text" name="mem_tel" id="mem_tel" value="<%=memberInfo.getMem_tel() %>">
	</td>
</tr>
<tr>
	<td>기본주소</td>
	<td>
		<input type="text" name="mem_addr1" id="mem_addr1" value="<%=memberInfo.getMem_addr1() %>">
	</td>
</tr>
<tr>
	<td>상세주소</td>
	<td>
		<input type="text" name="mem_addr2" id="mem_addr2" value="<%=memberInfo.getMem_addr2() %>">
	</td>
</tr>
<tr>
	<td>생년월일</td>
	<td>
		<input type="text" name="mem_birth" id="mem_birth" value="<%=memberInfo.getMem_birth() %>">
	</td>
</tr>
<tr>
	<td>아이디</td>
	<td>
		<input type="text" name="mem_id" id="mem_id" value="<%=memberInfo.getMem_id() %>">
	</td>
</tr>
<tr>
	<td>이메일</td>
	<td>
		<input type="text" name="mem_mail" id="mem_mail" value="<%=memberInfo.getMem_mail() %>">
	</td>
</tr>
<tr>
	<td>입사일</td>
	<td>
		<input type="text" name="hire" id="hire" value="<%=memberInfo.getHire() %>">
	</td>
</tr>
<tr>
	<td>퇴사일</td>
	<td>
		<input type="text" name="retire" id="retire" value="<%=memberInfo.getRetire() %>">
	</td>
</tr>
<tr>
	<td colspan="2" style="text-align:center;">
		<input id="submitBtn" type="button" value="저장"/>
		<input type="reset" value="취소"/>
	</td>
</tr>
</table>
</form>


</body>
</html>