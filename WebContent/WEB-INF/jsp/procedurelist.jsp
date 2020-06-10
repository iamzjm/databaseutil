<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/static/layui/dist/css/layui.css"  media="all">
</head>
<body>
	<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>所有的存储过程</legend>
</fieldset>
	<div class="layui-form">
	  <table class="layui-table">
	    <!-- <colgroup>
	      <col width="150">
	      <col width="150">
	      <col width="200">
	      <col>
	    </colgroup> -->
	    <thead>
	      <tr>
	        <th>存储过程</th>
	        <th>所属数据库</th>
	        <th align="center">操作</th>
	      </tr> 
	    </thead>
	    <tbody>
	    	<c:forEach items="${procedures }" var="procedure">
	    		<tr>
			       <td width="40%">${procedure.PROCEDURE_NAME }</td>
			       <td width="35%">${procedure.PROCEDURE_CAT }</td>
			       <td align="center">
			       		<a href="${pageContext.request.contextPath }/procedurescript.db?procedurename=${procedure.PROCEDURE_NAME}">查看脚本</a>
			       </td>
			    </tr>
	    	</c:forEach>
	    </tbody>
	  </table>
	</div>
</body>
</html>