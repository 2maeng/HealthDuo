<%@ tag language="java" pageEncoding="UTF-8"%>

   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Blog Details</title>
   <!-- Include CKEditor -->
   <script src="https://cdn.ckeditor.com/ckeditor5/38.1.0/classic/ckeditor.js"></script>
   <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
   <script type="text/javascript">
      $(document).ready(function(){
         var recommend = 0;
         var prohibit = 0;

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
               url: 'RcServlet.do?rcresult=' + recommend,
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
                  alert('error [' + error + ']');
               }
            });
         });

         $("#ph").on("click", function(){
            $.ajax({
               url: 'PhServlet.do?phresult=' + prohibit,
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
   
   
   <section class="blog-details spad">
      <div class="container">
         <textarea id="editor" name="bContent" placeholder="Enter some long form content."></textarea>
      </div>
   </section>

   <!-- Initialize CKEditor -->
   <script>
      ClassicEditor
         .create(document.querySelector('#editor'), {
            language: "ko"
         })
         .catch(error => {
            console.error(error);
         });
   </script>

   <a class="read_bt3" href="dec.do?bid=${board.bid}">😈</a>[$(board.favCnt)]

   <a class="read_bt4" href="dec.do?bid=${board.bid}">수정</a>[$(board.favCnt)]
   <a class="read_bt5" href="dec.do?bid=${board.bid}">삭제</a>[$(board.favCnt)]

   <p>작성자: ${post.author}</p>
   <hr>
   <p>글 내용: ${post.content}</p>
   <hr>
   <h2>댓글</h2>
   <hr>
   <form action="controller.jsp" method="post">
      <input class="example" type="text" placeholder="댓글작성">
      <input type="submit" value="작성완료">
   </form>
   
   <c:forEach var="comment" items="${comments}">
      <div class="comment">
            <p>${comment.author}</p>
            <p>${comment.content}</p>
         <hr>
         <h3>대댓글</h3>
         <!-- Loop through replies using JSTL forEach -->
         <c:forEach var="reply" items="${comment.replies}">
             <div class="reply">
                 <p>${reply.author}</p>
                 <p>${reply.content}</p>
             </div>
         </c:forEach>
         
         <hr>
      </div>
   </c:forEach>
