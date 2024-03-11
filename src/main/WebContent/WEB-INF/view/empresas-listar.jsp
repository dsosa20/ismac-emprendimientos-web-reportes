<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Empresas</h1>
	<button>
		<a href="${pageContext.request.contextPath}/empresas/findOne?opcion=1">Agregar</a>
	</button>
	
	<table>
	
		<thead>
		
			<tr>
			
				<th>NumEmpresa</th>
				<th>qRPago</th>
				<th>nombreempresa</th>
				<th>personaCargoEmpresa</th>
				<th>personaContacto</th>
				<th>telefono</th>
				<th>correo</th>
				<th>direccion</th>
				<th>fechaInicio</th>
				<th>tipoEmpresa</th>
				<th>horariosAtencion</th>
				<th>Acciones</th>
			
			</tr>
			
		</thead>
		<tbody>
			
			<c:forEach var="item" items="${empresas}">
			<tr>	
	
				<td>${item.idEmpresa}</td>
				<td>${item.QRPago}</td>
				<td>${item.nombreempresa}</td>
				<td>${item.personaCargoEmpresa}</td>
				<td>${item.personaContacto}</td>
				<td>${item.telefono}</td>
				<td>${item.correo}</td>
				<td>${item.direccion}</td>
				<td>${fn:substring(item.fechaInicio,0,10)}</td>
				<td>${item.tipoEmpresa}</td>
				<td>${item.horariosAtencion}</td>
	
		<td>
		<button> <a href="${pageContext.request.contextPath}/empresas/findOne?idEmpresa=${item.idEmpresa}&opcion=1"> Actualizar </a></button>
		<button> <a href="${pageContext.request.contextPath}/empresas/findOne?idEmpresa=${item.idEmpresa}&opcion=2"> Eliminar </a></button>

		</td>

	</tr>
		</c:forEach>
			
		</tbody>
		
	</table>
</body>
</html>