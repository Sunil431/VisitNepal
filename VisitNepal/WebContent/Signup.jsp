<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>


<!------ Include the above in your HEAD tag ---------->

<form method ="post" action="SIgnup">
  <label>
    <p class="label-txt">ENTER YOUR EMAIL</p>
    <input type="text" name="email" class="input" required>
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <br>
  <label>
    <p class="label-txt">ENTER YOUR NAME</p>
    <input type="text" name="uname" class="input" required>
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <br>
  <label>
    <p class="label-txt">ENTER YOUR PASSWORD</p>
    <input type="text" name="password" class="input" required>
    <div class="line-box">
      <div class="line"></div>
    </div>
  </label>
  <br>
  <button type="submit">submit</button>
  <a href="Login.jsp"><button type="button">Go Back</button></a>
</form>
</body>
</html>