﻿<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>无标题文档</title>
		<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow: hidden;
}
-->
</style>
	</head>

	<body>
		<table width="100%" height="100%" border="0" cellspacing="0"
			cellpadding="0">
			<tr>
				<td width="8" bgcolor="#353c44">
					&nbsp;
				</td>
				<td width="147" valign="top">
					<iframe src="left.jsp" height="100%" width="100%" frameborder="0" name="leftFrame" id="leftFrame"></iframe>
				</td>
				<td width="10" bgcolor="#add2da">
					&nbsp;
				</td>
				<td valign="top">
					<iframe src="${pageContext.request.contextPath}/houtai/goodSvl?method=queryGood" height="100%" width="100%" frameborder="0" name="rightFrame" id="rightFrame"></iframe>
				</td>
				<td width="8" bgcolor="#353c44">
					&nbsp;
				</td>
			</tr>
		</table>
	</body>
</html>
