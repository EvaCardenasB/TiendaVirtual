<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.ArrayList"%>


<head>

</head>

<body>
	<%
	out.println("<h1>Resultados</h1>");

	String valor1 = request.getParameter("valor1");
	String valor2 = request.getParameter("valor2");
	String operacion = request.getParameter("select");

	int value1 = Integer.parseInt(valor1);
	int value2 = Integer.parseInt(valor2);

	/*int resultado = operacion.equals("sumar") ? value1 + value2
			: operacion.equals("restar") ? value1 + value2
			: operacion.equals("multiplicar") ? value1 * value2 : operacion.equals("dividir") ? value1 / value2 : 0;*/
	
	double resultado=0;
	String simbolo="";
	switch (operacion) {
	case "sumar":
		resultado= value1 + value2;
		simbolo="+";
		break;
	case "restar":
		resultado= value1 - value2;
		simbolo="-";
		break;
	case "multiplicar":
		resultado= value1 * value2;
		simbolo="*";
		break;
	case "dividir":
		resultado= value1 / value2;
		simbolo="/";
		break;
	}
	out.println("La operacion de " + operacion + " " + value1 + " y " + value2 + " es = " + resultado);

	ArrayList operaciones = new ArrayList();
	operaciones.add(valor1+" "+simbolo+" "+valor2+" = "+resultado);
	
	
	%>
	<table>
		<tr>
			<%
			for (int i = 0; i < operaciones.size(); i++) {
				out.println("<tr>");
				out.println("<td>" + operaciones.get(i) + "</td>");
				out.println("</tr>");
			}
			%>
		</tr>
	</table>

</body>
</html>