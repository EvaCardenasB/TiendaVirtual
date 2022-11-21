package proyecto.persona;

public class Persona {
 protected String nombre;
 protected String primer_apellido;
 protected String segundo_apellido;
 protected String provincia;
 protected String sexo;
 

public Persona(String nombre, String primer_apellido, String segundo_apellido, String provincia, String sexo) {
	this.nombre = nombre;
	this.primer_apellido = primer_apellido;
	this.segundo_apellido = segundo_apellido;
	this.provincia = provincia;
	this.sexo = sexo;
}


@Override
public String toString() {
	return nombre + "," + primer_apellido + ", "
			+ segundo_apellido + ", " + provincia + ", " + sexo;
}


public String getNombre() {
	return nombre;
}

public void setNombre(String nombre) {
	this.nombre = nombre;
}

public String getPrimer_apellido() {
	return primer_apellido;
}

public void setPrimer_apellido(String primer_apellido) {
	this.primer_apellido = primer_apellido;
}

public String getSegundo_apellido() {
	return segundo_apellido;
}

public void setSegundo_apellido(String segundo_apellido) {
	this.segundo_apellido = segundo_apellido;
}

public String getProvincia() {
	return provincia;
}

public void setProvincia(String provincia) {
	this.provincia = provincia;
}

public String getSexo() {
	return sexo;
}

public void setSexo(String sexo) {
	this.sexo = sexo;
}
 
 
 
}
