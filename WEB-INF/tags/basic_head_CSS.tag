<%@ tag language="java" pageEncoding="UTF-8"%>

    
 <style>   
    
/* Reset some default styles */
body, h1, h2, h3, p, ul, li {
  margin: 0;
  padding: 0;
}

body {
  font-family: '맑은 고딕', 'Helvetica Neue', sans-serif;
  background-color: #f6f6f6;
}

.container {
  max-width: 800px;
  margin: 20px auto; /* Add margin for better centering */
  background-color: #fff;
  padding: 20px;
  border: 1px solid #e1e1e1;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
}

h1 {
  text-align: center;
  margin-bottom: 10px;
  color: #1a1a1a;
}

p {
  margin-bottom: 10px; /* Adjust margin for better spacing */
  line-height: 1.8; /* Set line-height for better readability */
}

/* Post Details Section */
.post-title {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 10px;
}

.post-author {
  font-size: 16px;
  color: #555;
}

.textbox {
  max-width: 800px;
  margin: 0 auto;
  background-color: #fff;
  padding: 30px;
  border: 1px solid #dcdcdc;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  line-height: 1.8;
  min-height: 100vh; /* Set the minimum height to the viewport height */
}

.post-content {
  padding: 15px 0;
}

.comment {
  margin-bottom: 30px;
}

.reply {
  margin-left: 20px;
  border-left: 3px solid #1ec800;
  padding-left: 15px;
}

/* Button Styles */
#postButton {
  display: block;
  width: 100%;
  max-width: 200px;
  margin: 20px auto;
  padding: 10px;
  font-size: 16px;
  background-color: #1ec800;
  color: #fff;
  border: none;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

#postButton:hover {
  background-color: #149100;
}

/* Footer Styles */
.footer {
  background-color: #f6f6f6;
  padding: 20px 0;
  text-align: center;
  font-size: 14px;
  color: #888;
}

.footer a {
  color: #888;
}

.footer a:hover {
  color: #555;
}


</style> 