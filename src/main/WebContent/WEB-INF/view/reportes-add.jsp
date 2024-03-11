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

		 	<h1>Reportes</h1>
	<form action="add" method="POST">
		

 idReporte
 <input type="hidden" id="idReporte" name="idReporte" value="${reporte.idReporte}">
 <br/><br/>
 reporte
 <input type="text" id="reporte" name="reporte" value="${reporte.reporte}">
 <br/><br/>
 fechaInicio
 <input type="date" id="fechaReporte" name="fechaReporte" value="${fn:substring(reporte.fechaReporte,0,10)}">
<br/><br/>
 descripcion
 <input type="text" id="descripcion" name="descripcion" value="${reporte.descripcion}">
 <br/><br/>
 <button type="submit">Guardar</button>
 <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/reportes/findAll';return false;">Cancelar</button>
	</form>
		
</body>
</html>