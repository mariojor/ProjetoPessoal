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

	<form action="cadastroDeFuncionario" method="POST">
	
		<label for="nome" >Nome:</label>
		<input id="nome" name="nome" type="text" />
	
		<label for="nome" >Idade:</label>
		<input id="idade" name="idade" type="text" />
	
		<button type="submit">Cadastrar</button>
	</form>

</body>
</html>