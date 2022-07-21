<%@page import="br.com.alura.gerenciador.modelo.Empresa"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada?acao=RemoveEmpresa&id=" var="LinkServeletRemoveEmpresa" />
<c:url value="/entrada?acao=MostraEmpresa&id=" var="LinkServeletMostraEmpresa" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Stander Taglib</title>
</head>
<body>

	<c:import url="logout-parcial.jsp" />

	Usuario Logado: ${usuarioLogado.login}
	<br>
	<br>
	<br>
	Lista de Empresas:
	</br>

	<c:if test="${not empty empresa }">
			Empresa ${ empresa } cadastrada com sucesso!
		</c:if>
		
	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>
				<%--empresa.nome = empresa.getNome() --%>
				${empresa.nome } - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
				<a href="${LinkServeletMostraEmpresa}${empresa.id }">edita</a>
				<a href="${LinkServeletRemoveEmpresa}${empresa.id }">remove</a>
				
			</li>
		</c:forEach>

	</ul>

</body>
</html>

