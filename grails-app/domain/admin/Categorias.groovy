package admin

class Categorias {
	String nombreCate
	String descripcion
	Date fechasol
	static hasMany = [productos:Productos]

    static constraints = {
    }
}
