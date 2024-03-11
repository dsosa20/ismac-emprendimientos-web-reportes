<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Perfil Empresa</h1>
	

<form action="add" method="POST" >
	
	 

	 idPerfilEmpresa
	 <input type="hidden" id="idPerfilEmpresa" name="idPerfilEmpresa" value="${perfil.idPerfilEmpresa}">
	 <br/><br/>
	 logo
	 <input type="text" id="logo" name="logo" value="${perfil.logo}">
	 <br/><br/>
	 opcColor1
	 <input type="text" id="opcColor1" name="opcColor1" value="${perfil.opcColor1}">
	 <br/><br/>
	 opcColor2
	 <input type="text" id="opcColor2" name="opcColor2" value="${perfil.opcColor2}">
	 <br/><br/>
	 gamaColor
	 <input type="text" id="gamaColor" name="gamaColor" value="${perfil.gamaColor}">
	 <br/><br/>
	 Empresa
	 <select id="idEmpresa" name="idEmpresa">	 	
	 	<c:forEach var="item" items="${empresa}" >
	 		<option value="${item.idEmpresa}" ${perfil.empresa.idEmpresa == item.idEmpresa ? 'selected' : ''}>${item.nombreempresa} </option>
	 	</c:forEach>	 		 		 		 
	 </select>
	 <br/><br/>
	 	 
	
	 <button type="submit">Guardar</button>	
     <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/perfilEmpresa/findAll'; return false;">Cancelar</button>
	
	
	</form>
</body>
</html>