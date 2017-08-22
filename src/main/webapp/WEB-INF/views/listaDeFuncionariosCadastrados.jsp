<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@page isELIgnored="false"%>
<%@page session="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ProjetoPessoal</title>
</head>
<body>
	<c:if test="${lista eq null}">
		Algo deu errado!!!	
	</c:if>
	<c:if test="${lista != null}">
	<table style="height: 10px; width: 775px;" border="1">
        <tr>
	        <th>Nome</th>
	        <th>Idade</th>
        </tr>

        <c:forEach items="${lista}" var="item">
        <tr>
            <td>${item.nome}</td>
            <td>${item.idade}</td>
        </tr>        
        </c:forEach>
    </table>
	</c:if>

</body>
</html>