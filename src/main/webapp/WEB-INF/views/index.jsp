<%@page import="proyecto.calculadora.Calculadora"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.ArrayList" %>
   
   <head>
   	<script>
   		function pinchar(){
   		
   		var campo = document.getElementById("campo");
   		alert("Hola "+campo.value); 
   			
   		}
   	</script>
   </head>
   
    <body>
    <%
        
        double valor1=5;
       	double valor2=10;
     
       	double suma= valor1+valor2;
       	double resta= valor1-valor2;
       	double multiplicacion= valor1*valor2;
       	double division= valor1/valor2;
        
        %>
        
        
        <table border="1">
        
      	  	<tr>
        	<%
        		out.println("<td>"+"</td>");
        		out.println("<td>"+"VALOR 1:   "+ valor1 +"</td>");     
        		out.println("<td>"+"VALOR 2:  "+ valor2 +"</td>");
        		//suma
        		out.println("<tr>");
        		out.println("<td>"+"SUMA"+"</td>");
        		out.println("<td colspan=2 text-align: center>"+ suma +"</td>");
        		out.println("</tr>");
        		//resta
        		out.println("<tr>"); 
        		out.println("<td>"+"RESTA"+"</td>");
        		out.println("<td colspan=2 text-align: center>"+ resta +"</td>");
        		out.println("</tr>");
        		//multiplicacion
        		out.println("<tr>");
        		out.println("<td>"+"MULTIPLICACION"+"</td>");
        		out.println("<td colspan=2 text-align: center>"+ multiplicacion +"</td>");
        		out.println("</tr>");
        		//division
        		out.println("<tr>");
        		out.println("<td>"+"DIVISION"+"</td>");
        		out.println("<td colspan=2 text-align: center>"+ division +"</td>");
        		out.println("</tr>");
        		
        	%>

        	
        	
        </table>
        
        
        
        
        
        
        
        <h1>Personas</h1>
         <%
        String nombre="Eva";
        String apellido="Cardenas";
         
        String nombre1="Sara";
        String apellido1="Romero";
        //out.println(nombre);
        ArrayList nombres = new ArrayList();
        ArrayList apellidos = new ArrayList();
        
        nombres.add(nombre);
        apellidos.add(apellido);
        
        nombres.add(nombre1);
        apellidos.add(apellido1);
        
        %>
        
        
        
        <% out.println("<h1>\"Personas\"</h1>");%>
        
        <table border="1">
        	<tr>
        		<td>Nombre</td>
        		<td>Apellidos</td>
        	</tr>
        	<%
        	for (int i = 0;i<nombres.size();i++){
        		out.println("<tr>");
        		out.println("<td>"+nombres.get(i)+"</td>");
        		out.println("<td>"+apellidos.get(i)+"</td>");
        		out.println("</tr>");
        	}
        	%>
        </table>
        
        <input type="text" value="" id="campo" >
        <input type="button" value="pinchar" onClick="javascript:pinchar()" >
        
    </body>
</html>