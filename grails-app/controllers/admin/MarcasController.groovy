package admin

class MarcasController {

    def index() { }
     def agregar(){
        /* if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }*/
      
     }

    def guardar(){
        /* if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }*/
        if (request.method=='POST') {
            def p = new Marcas(nombreMarca:params.mimarca,descripcion:params.mides,fechasol:new Date())
            p.save()
            redirect (controller:"Marcas",action:"agregar")//para direccionar
            
        }else{
            render("no valido")
        }
     

      }
    	

    def showImage(){
        
    }
    def mostrar(){
         if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
        def res=Marcas.list(sort:"nombreMarca",order:"asc")//enlista 
       // render(resultado.nombre)
        [marcas:res]
     
             
    }
    def detalles(){
         if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
        def resultado=Marcas.get(params.id)//para mostrar detalles de un registro solamente
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

        def resultado=Marcas.get(params.id)
         resultado.delete()
         redirect(action:"mostrar")
       
      
    }
    def modificar(){
        if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        } 
         def ped=Marcas.get(params.id)
       
        if (request.method=='POST') {
            ped.nombreMarca=params.mimarca
            ped.descripcion=params.mides
            ped.save()
            redirect(action:"mostrar")
           
          }
          [mod:ped]   
            

    }

     
            

     
            

    
    def listar(){
     

    }
}
