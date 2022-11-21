package proyecto.persona;

/**
 * @author EvaCárdenasBermudez
 *
 */

class User {
	protected String name;
	protected String email;
	protected String password;
	protected Long idBasket;

	/**
	 * 
	 */
	
	public User() {
		this.name = name;
		this.email = email;
		this.password = password;
		this.idBasket = idBasket;
	}

	public String getNombre() {
		return name;
	}

	public void setNombre(String nombre) {
		this.name = nombre;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Long getIdCesta() {
		return idBasket;
	}

	public void setIdCesta(Long idCesta) {
		this.idBasket = idCesta;
	}
	
}
