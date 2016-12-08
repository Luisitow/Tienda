package admin
import cliente.Prodpre

class Productos {
	String nombreProducto
	Integer existencia
	Double precio
	Date fechasol
	String imagen
	static belongsTo = [cat:Categorias]
	Marcas marcas
	

    static constraints = {
    }
}
