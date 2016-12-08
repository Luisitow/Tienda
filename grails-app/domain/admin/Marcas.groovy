package admin

class Marcas {
	String nombreMarca
	String descripcion
	Date fechasol
	static hasMany = [marcas:Productos]

    static constraints = {
    }
}