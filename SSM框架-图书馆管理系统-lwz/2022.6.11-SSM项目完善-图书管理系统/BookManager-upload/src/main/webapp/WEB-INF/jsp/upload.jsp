<%--
  Created by IntelliJ IDEA.
  User: 雷王仔
  Date: 2022/6/9
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传页面</title>
</head>
<body>
<form action="doUpload" method="post" enctype="multipart/form-data">
    姓名：<input name="uname"><br>
    头像：<input type="file" name="photo"><br>
         <input type="submit" value="提交">
</form>
</body>
</html>
