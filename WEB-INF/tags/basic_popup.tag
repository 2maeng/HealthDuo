  <%@ tag language="java" pageEncoding="UTF-8"%>
  
  
  <button class="popup-button" onclick="openPopup()">이벤트 공지사항</button>
  
  <div id="popup">
    <div class="popup-content">
      <p>서비스 준비중입니다!</p>
      <button class="popup-closebutton" onclick="closePopup()">닫기</button>
    </div>
  </div>
  
  <script>
    function openPopup() {
      document.getElementById("popup").style.display = "block";
    }
    
    function closePopup() {
      document.getElementById("popup").style.display = "none";
    }
  </script>