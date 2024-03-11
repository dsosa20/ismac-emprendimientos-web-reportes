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

	<h1>Client</h1>
	<form action="add" method="POST">
		

 idEmpresa
 <input type="hidden" id="idEmpresa" name="idEmpresa" value="${empresa.idEmpresa}">
 <br/><br/>
 qRPago
 <input type="text" id="QRPago" name="QRPago" value="${empresa.QRPago}">
 <br/><br/>
 nombreempresa
 <input type="text" id="nombreempresa" name="nombreempresa" value="${empresa.nombreempresa}">
 <br/><br/>
 personaCargoEmpresa
 <input type="text" id="personaCargoEmpresa" name="personaCargoEmpresa" value="${empresas.personaCargoEmpresa}">
 <br/><br/>
 personaContacto
 <input type="text" id="personaContacto" name="personaContacto" value="${empresa.personaContacto}">
 <br/><br/>
 telefono
 <input type="text" id="telefono" name="telefono" value="${empresa.telefono}">
 <br/><br/>
 correo
 <input type="email" id="correo" name="correo" value="${empresa.correo}">
 <br/><br/>
 direccion
  <input type="text" id="direccion" name="direccion" value="${empresa.direccion}">
 <br/><br/>
 fechaInicio
 <input type="date" id="FechaInicio" name="FechaInicio" value="${fn:substring(empresa.fechaInicio,0,10)}">
<br/><br/>
 tipoEmpresa
 <input type="text" id="TipoEmpresa" name="TipoEmpresa" value="${empresa.tipoEmpresa}">
 <br/><br/>
 horariosAtencion
 <input type="text" id="HorariosAtencion" name="HorariosAtencion" value="${empresa.horariosAtencion}">
 <br/><br/>
 <button type="submit">Guardar</button>
 <button type="button" onclick="window.location.href='/ismac-emprendimientos-web/empresas/findAll';return false;">Cancelar</button>
	</form>

</body>
</html>