<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
	i {
	   cursor: pointer;
	}
	 .textbox2 {
        padding-left: 300px;
        text-align: center;
        width: 80%;
        min-height: 70vh;
        max-height: 70vh;
    }
    .textbox3 {
        text-align: center;
        width: 50%;
        min-height: 70vh;
        max-height: 70vh;
        margin: 0 auto;
    }

	.textName {
		display: inline-block;
		width: 80%;
	}
	.textH {
		font-weight: bold;   
		display: inline-block;
		width: 250px;
		padding: 10px;
		padding-left: 0px;
		padding-top: 40px;
		text-align: center;
	}
	
		#sContainer2 {
			display: flex;
			
		}
		
	form {
        display: list-item;
        flex-direction: column;
        align-items: center;
        margin-top: 20px;
    }
    textarea.example {
    	vertical-align: top;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%;
        height: 150px;
        max-width: 400px;
        max-height: 80px;
        margin-bottom: 10px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        height: 80px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
	p {
		display: inline;
	
	}
	
  .read_bt4 {
    color: black;
  }

  .read_bt4:hover {
    color: orange;
  }

  .read_bt5 {
    color: black;
  }

  .read_bt5:hover {
    color: red;
  }
	
	
</style>
  <!-- <div class="container"> -->
  <section id="sContainer1">
    <div class="textbox2">
    <script src="https://kit.fontawesome.com/7b2dcea907.js" crossorigin="anonymous"></script>
    <div class="textName" >
        <h1 class="textH">${bdata.title}</h1>
    </div>
    
    
    
    <br>
    <i id="rc" class="fa-solid fa-heart" style="color: #f22202;" alt="이미지"></i>
   <i id="ph" class="fa-solid fa-triangle-exclamation" style="color: #e7e4e4;"></i>
   <script type="text/javascript">
   $(document).ready(function(){
      var recommend = parseInt(${recommend});
      var prohibit = parseInt(${prohibit});

      if(recommend > 0){
         $("#rc").removeClass("fa-regular").addClass("fa-solid fa-beat");
      } else {
         $("#rc").removeClass("fa-solid fa-beat").addClass("fa-regular");
      }

      if(prohibit > 0){
         $("#ph").css("color", "#f58300");
      } else {
         $("#ph").css("color", "#e7e4e4");
      }

      $("#rc").on("click", function(){
         $.ajax({
            url: 'RcServlet.do?rcresult=' + recommend +'&boardNum=' + parseInt(${bdata.boardNum}),
            type: 'POST',
            success: function(rcresult){
               console.log('rcresult [' + rcresult + ']');
               if (rcresult == 1) {
                  $("#rc").removeClass("fa-regular").addClass("fa-solid fa-beat");
                  recommend = 1;
               } else if (rcresult == 0) {
                  $("#rc").removeClass("fa-solid fa-beat").addClass("fa-regular");
                  recommend = 0;
               }
            },
            error: function(error){
               history.go(goback.jsp);
            }
         });
      });

      $("#ph").on("click", function(){
         $.ajax({
            url: 'PhServlet.do?phresult=' + prohibit +'&boardNum=' + parseInt(${bdata.boardNum}),
            type: 'POST',
            success: function(phresult){
               console.log('phresult [' + phresult + ']');
               if (phresult == 1) {
                  $("#ph").css("color", "#f58300");
                  prohibit = 1;
               } else if (phresult == 0) {
                  $("#ph").css("color", "#e7e4e4");
                  prohibit = 0;
               }
            },
            error: function(error){
               alert('error [' + error + ']');
            }
         });
      });
      
      
   });
   </script>
            <!-- not empty mid 는 현재 로그인이 되어있으면 -->
            <!-- 현재 로그인 한 nickname이랑 보고있는 글의 nickname이 같으면 -->
           <c:if test="${mid eq bdata.mid || mid eq 'ADMIN'}">
           <c:if test="${bdata.category == 1 || bdata.category == 2}">
           <a class="read_bt4" href="updateBoardPage.do?boardNum=${bdata.boardNum}">수정</a>
           <a class="read_bt5" href="deleteBoard.do?boardNum=${bdata.boardNum}">삭제</a>
           </c:if>
           <c:if test="${bdata.category == 0}">
           <a class="read_bt4" href="updateNoticePage.do?boardNum=${bdata.boardNum}">수정</a>
           <a class="read_bt5" href="deleteNotice.do?boardNum=${bdata.boardNum}">삭제</a>
           </c:if>
           </c:if>
        <br>   
        <p>${bdata.nickName}님</p>
        <hr>
        <p>${bdata.content}</p>
    </div>
    </section>
	
	<section id="sContainer2">
	<div class="textbox3">
    <hr>
    <strong><span style="font-size: 30px;">댓글</span></strong>
    <hr>
    
    <form action="insertComment.do?boardNum=${bdata.boardNum}" method="post">
    	<textarea class="example" rows="5" id="comment" name="comment" placeholder="댓글내용입력" required></textarea>
       	<input type="submit" value="작성완료">
    </form>
    <c:forEach var="csdata" items="${csdatas}">
        <div class="comment">
        	<p style="font-size: 25px;">닉네임 |</p>
              <c:if test="${not empty csdata.comment.mid}">
                  <p style="font-size: 25px;">${csdata.comment.nickName}</p>
               </c:if>   
              <c:if test="${empty csdata.comment.mid}">
                  <p style="font-size: 25px;">탈퇴한 사용자</p>
               </c:if>
               <br>
               <p style="font-size: 30px;">댓글내용 |</p>
               <c:if test="${csdata.comment.comment ne null}">
               <p style="font-size: 30px;">${csdata.comment.comment}</p>
            </c:if>
               <c:if test="${csdata.comment.comment eq null}">
               <p style="font-size: 30px;">삭제된 댓글입니다.</p>
            </c:if>
            <br>
            <c:if test="${csdata.comment.mid eq mid || mid eq 'ADMIN' }">
               <a class="read_bt4" href="updateCommentPage.do?commentNum=${csdata.comment.commentNum}">수정</a>
               <a class="read_bt5" href="deleteComment.do?commentNum=${csdata.comment.commentNum}&boardNum=${bdata.boardNum}">삭제</a>
            </c:if>
            <c:if test="${not empty csdata.rdatas}">
            <hr>
            <strong><span style="font-size: 25px;">대댓글</span></strong>
            <!-- Loop through replies using JSTL forEach -->
            <c:forEach var="rdata" items="${csdata.rdatas}">
                <div class="reply">
                <br>
                   <p style="font-size: 20px;">┗━▶ 닉네임 |</p>
                   <c:if test="${not empty rdata.mid}">
                    <p style="font-size: 20px;">${rdata.nickName}</p>
               </c:if>
                   <c:if test="${empty rdata.mid}">
               <p style="font-size: 20px;">탈퇴한 사용자</p>
               </c:if>
               <br>
              <p style="font-size: 25px;">대댓글내용 |</p>
                    <p style="font-size: 25px;">${rdata.reply}</p>
                    <br>
                   <c:if test="${rdata.mid eq mid || mid eq 'ADMIN' }">
                    <a class="read_bt4" href="updateReplyPage.do?replyNum=${rdata.replyNum}">수정</a>
                  <a class="read_bt5" href="deleteReply.do?replyNum=${rdata.replyNum}&boardNum=${bdata.boardNum}">삭제</a>
                  </c:if>
                </div>
            </c:forEach>
            </c:if>
            <c:if test="${not empty csdata}">
             <form action="insertReply.do?commentNum=${csdata.comment.commentNum}" method="post">
                <input type="hidden" name="boardNum" value="${bdata.boardNum}">
                <textarea class="example" rows="5" id="comment" name="reply" placeholder="대댓글내용입력" required></textarea>
                <input type="submit" value="작성완료">
                </form>
            </c:if>
            <hr>
        </div>
    </c:forEach>
        </div>
        </section>
    