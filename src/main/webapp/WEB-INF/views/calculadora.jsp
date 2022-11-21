<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@page import="java.util.ArrayList" %>

   
   <head>
   	
   </head>
   
    <body>
       <%
        out.println("<h1>CALCULADORA</h1>"); 
        
       
                
        
        %>
       <form method="get" action="resultados"> 
       
            <input type="number" name="valor1">
            <input type="number" name="valor2">
            <select name="select">
                <option value="sumar">SUMAR</option>
                <option value="restar">RESTAR</option>
                <option value="multiplicar">MULTIPLICAR</option>
                <option value="dividir">DIVIDIR</option>
            <input type="submit" value="Calcular">
        </form>
     
    	
    </body>
</html>