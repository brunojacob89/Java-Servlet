<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novaempresa" var="LinkServeletNovaEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action=${LinkServeletNovaEmpresa } method="post">
	
		Nome: <input type="text" name="nome" />
		Data de Abertura: <input type="text" name="data" />
		<input type="submit"/>
	
	</form>

</body>
</html>