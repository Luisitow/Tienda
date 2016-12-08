package admin

class Clientes {
	String nombre
	String correo
	String password
	String passwor
	Date fechasol

	//static hasMany = [ven:Ventas]
    static constraints = {
    	nombre unique:true
    	correo unique:true, email: true, blank: false

    }
}
