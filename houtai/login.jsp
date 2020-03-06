<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理工作平台</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script type="text/javascript" src="js/js.js"></script>
</head>
<body>
<div id="top"> </div>
<form id="login" name="login" action="${pageContext.request.contextPath}/houtai/userSvl?method=login" method="post">
  <div id="center">
    <div id="center_left"></div>
    <div id="center_middle">
      <div class="user">
        <label>用户名：
        <input type="text" name="user" id="user" />
        </label>
      </div>
      <div class="user">
        <label>密　码：
        <input type="password" name="pwd" id="pwd" />
        </label>
      </div>
      <div>
        记住密码: <input type="checkbox" name="save" value="save">
      </div>
      ${info}
    </div>
    <div id="center_middle_right"></div>
    <div id="center_submit">
      <div class="button"><img src="images/dl.gif" width="57" height="20" onclick="form_submit()" /></div>
      <div class="button"><img src="images/cz.gif" width="57" height="20" onclick="form_reset()"/></div>
    </div>
    <div id="center_right"></div>
  </div>
</form>
<div id="footer"></div>
</body>
</html>
