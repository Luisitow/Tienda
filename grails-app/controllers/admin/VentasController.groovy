package admin

class VentasController {

    def index() {
        if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }   
       
    }
     
     def agregar(){
        if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }   
       
       
    
      
     }

    def guardar(){
     

      }
    	

    def showImage(){
        
    }
    def mostrar(){
        if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }   
        def res=Ventas.list()//enlista 
       // render(resultado.nombre)
        [vent:res]
       
    }
     

             
    
    def detalles(){
        if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
        def resultado=Ventas.get(params.id)//para mostrar detalles de un registro solamente
        if (!resultado) {
            response.sendError 404
            return
            
        }
        [det:resultado]
     

        
    }
    def buscar(){
            

            
        
        
    }
  

    def eliminar(){
        if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }

        def resultado=Ventas.get(params.id)
         resultado.delete()
         redirect(action:"mostrar")
       
      
    }
    def modificar(){
     
            

    } 
            

    
    def listar(){
     

    }
}
