<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/custom.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> <!-- CDN방식임!! -->
	<title>Na's 회원가입</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<%
	String kkoidd = (String)request.getAttribute("kkoid");
	String nickname = (String)request.getAttribute("nickname");
	System.out.println("joincontroller에서 받아온 kkoid"+kkoidd);
	System.out.println("joincontroller에서 받아온 nickname"+nickname);
	
	String email = "";
	String gender = "";
	if(request.getAttribute("email") != ""){
		email = (String)request.getAttribute("email");
	}
	if(request.getAttribute("gender") != ""){
		gender = (String)request.getAttribute("gender");
	}
%>
	<script type="text/javascript">
	
	
// 	let gender ="";
	
// 	function radioValue(){
// 		let radio_length = document.getElementsByName("userGender").length;
// 		for(let i = 0; i < radio_length; i++){
// 			if(document.getElementsByName("userGender")[i].checked == true){
// 				gender = document.getElementsByName("userGender")[i].value;
// 			}	
// 		}
		
// 	}; // radioValue
	
		function idCheck(){
			let checkId = $('#mem_id').val();
			console.log(checkId);
			
			$.ajax({
				url : '<%=request.getContextPath()%>/member/idCheckController.do',
				data : {
					'checkId' : checkId
				},
				type : 'post',
				success : function(res){
					console.log(res);
					if(res === "1"){
						alert("이미 가입되어 있는 아이디입니다.");
					}else{
						alert("생성 가능한 아이디입니다.");
					}
				},
				error : function(){},
				dataType : 'json'
			})// ajax	
		};
		
		function resisterGMP(){
			let kkoid = $('#testBtn').val();
			let id = $('#mem_id').val();
			//console.log('resisterGMP 에서의 ', id);
			let pw = $('#mem_pw').val();
			let name = $('#mem_nm').val();
			let birth = $('#mem_birth').val();
			let tel = $('#mem_tel').val();
			let addr1 = $('#mem_addr1').val();
			let addr2 = $('#mem_addr2').val();
			let mail = $('#mem_mail').val();
			//console.log('joinPage.jsp에서의 ', kkoid);
			//console.log('joinPage.jsp에서의 ', id);
			//console.log('joinPage.jsp에서의 ', pw);
			$.ajax({
				url : '<%=request.getContextPath()%>/member/join.do?<%="kkoid"%>='+kkoid,
				data : {
					'mem_id' : id,
					'mem_pw' : pw,
					'mem_nm' : name,
					'mem_birth' : birth,
					'mem_tel' : tel,
					'mem_addr1' : addr1,
					'mem_addr2' : addr2,
					'mem_mail' : mail
				},
				type : 'post',
				success : function(){
					alert('회원가입이 완료되었습니다')
					location.href = '<%=request.getContextPath()%>/loginPage.jsp'
				},
				error : function(){},
				dataType : 'json'
			});//ajax
		}
	</script>
</head>
<body>
<%
	String id = (String)request.getAttribute("id"); 
// 	String email = "";
// 	String gender = "";
// 	if(request.getAttribute("email") != ""){
// 		email = (String)request.getAttribute("email");
// 	}
// 	if(request.getAttribute("gender") != ""){
// 		gender = (String)request.getAttribute("gender");
// 	}
%>
	<div class="container">
		<form method="post" action="<%=request.getContextPath() %>/member/join.do">
			<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원가입 양식</h4></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" id="mem_id"  maxLength="20"></td>
						<td style="width: 110px;"><button class="btn btn-primary" onclick="idCheck();" type="button">중복체크</button></td>	
					</tr>
					<tr>
						<td style="width: 110px;"><h5>비밀번호</h5></td>
						<td colspan="2"><input class="form-control" type="password" id="mem_pw" name="mem_pw" maxLength="20"></td>
					</tr>
	 				
	 				<tr>
						<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
						<td colspan="2"><input class="form-control" type="password" id="userPassword2" name="userPassword2" maxLength="20"></td>
					</tr>
					<tr>
					<%
						if(!nickname.equals("")){
					%>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="mem_nm" name="mem_nm" maxLength="20" value="<%=nickname%>"></td>
					<%
						}else{
					%>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="mem_nm" name="mem_nm" maxLength="20"></td>
					<%	
						}
					%>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>생년월일</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="mem_birth" name="mem_birth" maxLength="20"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>전화번호</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="mem_tel" name="mem_tel" maxLength="20"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>기본주소</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="mem_addr1" name="mem_addr1" maxLength="20"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>상세주소</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="mem_addr2" name="mem_addr2" maxLength="20"></td>
					</tr>
<!-- 					<tr> -->
<!-- 						<td style="width: 110px;"><h5>성별</h5></td> -->
<!-- 						<td colspan="2"> -->
<!-- 							<div class="form-group" style="text-align: center; margin: 0 auto;"> -->
<!-- 								<div class="btn-group" data-toggle="buttons"> -->
<%-- 								<% --%>
<!-- // 									if(gender.equals("male")){ -->
<%-- 								%> --%>
<!-- 									  	<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자 -->
<!-- 										<input type="radio" name="userGender" autocomplete="off" value="여자">여자 -->
<%-- 								<% --%>
<!-- // 									}else if(gender.equals("female")){ -->
<%-- 								%> --%>
<!-- 									  	<input type="radio" name="userGender" autocomplete="off" value="남자" >남자 -->
<!-- 										<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자 -->
<%-- 								<% --%>
<!-- // 									}else{ -->
<%-- 								%> --%>
<!-- 									  	<input type="radio" name="userGender" autocomplete="off" value="남자" >남자 -->
<!-- 										<input type="radio" name="userGender" autocomplete="off" value="여자" >여자 -->
<%-- 								<% --%>
<!-- // 									} -->
<%-- 								%> --%>
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					<tr>
						<td style="width: 110px;"><h5>성별</h5></td>
						<td colspan="2">
							<div class="form-group" style="text-align: center; margin: 0 auto;">
								<div class="btn-group" data-toggle="buttons">
								<%
									if(gender.equals("male")){
								%>
									  	<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
										<input type="radio" name="userGender" autocomplete="off" value="여자">여자
								<%
									}else if(gender.equals("female")){
								%>
									  	<input type="radio" name="userGender" autocomplete="off" value="남자" >남자
										<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
								<%
									}else{
								%>
									  	<input type="radio" name="userGender" autocomplete="off" value="남자" >남자
										<input type="radio" name="userGender" autocomplete="off" value="여자" >여자
								<%
									}
								%>
								</div>
							</div>
						</td>
					</tr>
					<tr>
					<%
						if(!email.equals("")){
					%>
						<td style="width: 110px;"><h5>이메일</h5></td>
						<td colspan="2"><input class="form-control" type="email" id="mem_mail" name="mem_mail" maxLength="20" value="<%=email%>"></td>
					<%
						}else{
					%>
						<td style="width: 110px;"><h5>이메일</h5></td>
						<td colspan="2"><input class="form-control" type="email" id="mem_mail" name="mem_mail" maxLength="20"></td>
					<%	
						}
					%>
					</tr>
					<tr>
						<td style="text-align: left" colspan="3"><input id="joinBtn" class="btn btn-primary pull-right" type="button" value="회원가입" onclick="resisterGMP();"></td>
					</tr>		
				</tbody>
			</table>
		</form>
		
		<input type="hidden" id="testBtn" value="<%=kkoidd %>" onclick="">
		
	</div> 
</body>
</html>