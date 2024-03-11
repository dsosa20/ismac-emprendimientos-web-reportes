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
		<a href="${pageContext.request.contextPath}/reportes/findOne?opcion=1">Agregar</a>
	</button>
	
	<table>
	
		<thead>
		
			<tr>
			
				<th>idReporte</th>
				<th>reporte</th>
				<th>fechaReporte</th>
				<th>descripcion</th>
				<th>Acciones</th>
			
			</tr>
			
		</thead>
		<tbody>
			
			<c:forEach var="item" items="${reportes}">
			<tr>	
	
				<td>${item.idReporte}</td>
				<td>${item.reporte}</td>
				<td>${fn:substring(item.fechaReporte,0,10)}</td>
				<td>${item.descripcion}</td>
	
				<td>
					<button> <a href="${pageContext.request.contextPath}/reportes/findOne?idReporte=${item.idReporte}&opcion=1"> Actualizar </a></button>
					<button> <a href="${pageContext.request.contextPath}/reportes/findOne?idReporte=${item.idReporte}&opcion=2"> Eliminar </a></button>
				</td>
			</tr>
		</c:forEach>
			
		</tbody>
		
	</table>
</body>
</html>