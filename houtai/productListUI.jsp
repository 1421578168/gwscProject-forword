<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>无标题文档</title>
<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12px; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
-->
</style>
</head>

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24" bgcolor="#353c44"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="6%" height="19" valign="bottom"><div align="center"><img src="images/tb.gif" width="14" height="14" /></div></td>
                <td width="94%" valign="bottom"><span class="STYLE1"> 管理人员基本信息列表</span></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce">
      <tr>
        <td width="4%" height="20" bgcolor="d3eaef" class="STYLE10"><div align="center">
          <input type="checkbox" name="checkbox" id="checkbox" />
        </div></td>
        <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品编号</span></div></td>
        <td width="15%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品名称</span></div></td>
        <td width="14%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品类型</span></div></td>
        <td width="16%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">商品价格</span></div></td>
        <td width="14%" height="20" bgcolor="d3eaef" class="STYLE6"><div align="center"><span class="STYLE10">基本操作</span></div></td>
      </tr>
      <c:forEach items="${sessionScope.pb.list}" var="good">
      <tr>
        <td height="20" bgcolor="#FFFFFF"><div align="center">
          <input type="checkbox" name="checkbox2" id="checkbox2" />
        </div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE6"><div align="center"><span class="STYLE19">${good.id}</span></div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${good.gname}</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${good.gtype}</div></td>
        <td height="20" bgcolor="#FFFFFF" class="STYLE19"><div align="center">${good.price}</div></td>
        <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE21">
            <a href="${pageContext.request.contextPath}/houtai/goodSvl?method=delete&id=${good.id}">删除</a> 
            | <a href="updateproduct.jsp?id=${good.id}&gname=${good.gname}&gtype=${good.gtype}&price=${good.price}">修改</a>
        </div></td>
      </tr>
      </c:forEach>
    </table></td>
  </tr>
  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="33%"><div align="left"><span class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;共有<strong> ${sessionScope.pb.totalCount}</strong> 条记录，当前第<strong> 1</strong> 页，共 <strong>${sessionScope.pb.totalPage}</strong> 页</span></div></td>
        <td width="67%"><table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td width="49"><div align="center"><a href="${pageContext.request.contextPath}/houtai/goodSvl?method=queryGood&pageNum=1" style="font-size: 12px;width: 40px;height: 15px;">首页</a></div></td>
            <td width="49"><div align="center">
                <c:if test="${pb.pageNum <= 1}">
                    <a href="${pageContext.request.contextPath}/houtai/goodSvl?method=queryGood&pageNum=1" style="font-size: 12px;width: 40px;height: 15px;">上一页</a>
                </c:if>
                <c:if test="${pb.pageNum > 1}">
                    <a href="${pageContext.request.contextPath}/houtai/goodSvl?method=queryGood&pageNum=${pb.pageNum-1}" style="font-size: 12px;width: 40px;height: 15px;">上一页</a>
                </c:if>
            </div></td>
            <td width="49"><div align="center">
                <c:if test="${pb.pageNum >= pb.totalPage}">
                    <a href="${pageContext.request.contextPath}/houtai/goodSvl?method=queryGood&pageNum=${pb.totalPage}" style="font-size: 12px;width: 40px;height: 15px;">下一页</a>
                </c:if>
                <c:if test="${pb.pageNum < pb.totalPage}">
                    <a href="${pageContext.request.contextPath}/houtai/goodSvl?method=queryGood&pageNum=${pb.pageNum+1}" style="font-size: 12px;width: 40px;height: 15px;">下一页</a>
                </c:if>
            </div></td>
            <td width="49"><div align="center"><a href="${pageContext.request.contextPath}/houtai/goodSvl?method=queryGood&pageNum=${pb.totalPage}" style="font-size: 12px;width: 40px;height: 15px;">尾页</a></div></td>
            <td width="37" class="STYLE22"><div align="center">转到</div></td>
            <td width="22"><div align="center">
              <input type="text" name="textfield" id="textfield"  style="width:20px; height:12px; font-size:12px; border:solid 1px #7aaebd;"/>
            </div></td>
            <td width="22" class="STYLE22"><div align="center">页</div></td>
            <td width="35"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
