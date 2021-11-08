
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
    	 dataType : "json",
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
			str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
			$('.col-lg-12').html(str);
			$('.boardInsertBtn').on('click', boardInsert);
          },
	        
	        error :function(xhr){
				console.log(xhr);
				console.log(xhr.status);
	        }
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
				str += "<li class='detail'>";
					str += "제목 : " + v.board_title;
					str += "<br>";
					str += "저자 : " + v.board_writer;
					str += "<br><hr>";
				str += "</li>";
				});
				str += "</ol>";
				str += "<input type='button' class='boardInsertBtn' value='게시글 추가'/>";
				$('.col-lg-12').html(str);
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
// 	str += "<input type='text' placeholder='게시물 유형' id='board_nm' name='board_nm' maxlength='20'>";
		str +="	<select name='board_nm' id='board_nm'>";
		str +="		<option value='1'>자유</option>";
		str +="		<option value='2'>공지</option>";
		str +="	</select>";
	str += "<input type='text' placeholder='게시물 제목' id='board_title' name='board_title' maxlength='20'>";
	str += "<input type='text' placeholder='글쓴이' id='board_writer' name='board_writer' maxlength='20'>";
	str += "<input type='text' placeholder='게시물 내용' id='board_content' name='board_content' maxlength='20'>";
	
	str += "<input type='button' id='boardInsert' value='추가'></input>";

	$('.col-lg-12').html(str); 
				
				
				
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
			