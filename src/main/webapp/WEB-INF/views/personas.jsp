<%@page
	import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page import="proyecto.persona.Persona"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>


<head>

</head>
<body>
	<%
  
  ArrayList<Persona> personas = new <Persona>ArrayList();
  
  personas.add(new Persona("Sara","Fuentes","Marquez","Huelva","F"));
  personas.add(new Persona("Isabel","Romero","Sanchez","Malaga","F"));
  personas.add(new Persona("Jose","Marquez","Fernandez","Sevilla","M"));
  personas.add(new Persona("Pepe","Cardenas","Rojas","Huelva","M"));
  personas.add(new Persona("Juan","Gonzalez","Vargas","Huelva","M"));
  personas.add(new Persona("Alberto","Lima","Angulo","Sevilla","M"));
  personas.add(new Persona("Eva","Cardenas","Bermudez","Malaga","F"));
  personas.add(new Persona("Cristina","Cardenas","Bermudez","Cadiz","F"));
  personas.add(new Persona("Elvira","Fuentes","Tobarra","Granada","F"));
  personas.add(new Persona("Andrea","Fuentes","Marquez","Sevilla","F"));
  personas.add(new Persona("Maria","Canela","Garcia","Huelva","F"));
  personas.add(new Persona("David","Toscano","Perez","Sevilla","M"));
  personas.add(new Persona("Antonio","Garcia","Cardenas","Huelva","M"));
  personas.add(new Persona("Jose Manuel","Perez","Carrasco","Huelva","M"));
  personas.add(new Persona("Carlos","Silva","Estevez","Huelva","M"));
  
  int mujeres = 0;
  int hombres = 0;
  
  HashMap mapaProvincias = new HashMap();
  
  for (int i=0;i<personas.size();i++){
	  
	  if(mapaProvincias.get(personas.get(i).getProvincia())!=null){
		  mapaProvincias.put(personas.get(i).getProvincia(), new ArrayList());
		 // ((ArrayList)mapaProvincias.get(personas.get(i).getProvincia())).add(personas.get(i));
	
	  }
	 
		  ((ArrayList)mapaProvincias.get(personas.get(i).getProvincia())).add(personas.get(i));
	  
  }
   %>

	<table border="1">
		<tr>
			<td>Nombre</td>
			<td>Primer_Apellido</td>
			<td>Segundo_Apellido</td>
			<td>Provincia</td>
			<td>Sexo</td>

		</tr>

		<tr>
			<%for(Persona i: personas){
	  	if(i.getSexo().equals("F")){
		  mujeres++;
	 	}
	 	else{
		  hombres++;
	 	}
	 %>
			<td>
				<%out.println(i.getNombre());%>
			</td>
			<td>
				<% out.println(i.getPrimer_apellido());%>
			</td>
			<td>
				<%out.println(i.getSegundo_apellido());%>
			</td>
			<td>
				<%out.println(i.getProvincia());%>
			</td>
			<td>
				<%out.println(i.getSexo());%>
			</td>
		</tr>
		<%}%>
		<tr>
			<td>TOTAL DE PERSONAS</td>
			<td colspan="4">
				<%out.println(personas.size());%>
			</td>
		</tr>
		<tr>
			<td>TOTAL MUJERES</td>
			<td colspan="4">
				<%out.println(mujeres);%>
			</td>
		</tr>
		<tr>
			<td>TOTAL HOMBRES</td>
			<td colspan="4">
				<%out.println(hombres);%>
			</td>
		</tr>
	</table>


	<table>
		<tr>
			<% 
   for (int i=0;i<mapaProvincias.size();i++){
		

	 %>
			<td>
				<%out.println(mapaProvincias.get(personas.get(i).getProvincia()));%>
			</td>

		</tr>
		<%}%>
	</table>
</body>


</html>


