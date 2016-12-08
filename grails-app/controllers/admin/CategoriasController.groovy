package admin

class CategoriasController {

    //def index() { }
    def agregar(){
    	/* if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }*/
      
     }

    def guardar(){
    	/*if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }*/
    	if (request.method=='POST') {
    		def p = new Categorias(nombreCate:params.micate,descripcion:params.mides,fechasol:new Date())
    	    p.save()
    	    redirect (controller:"Categorias",action:"agregar")//para direccionar
    		
    	}else{
           // flash.message=""
    		render("no valido")
    	}
     

      }
    	

    def showImage(){
        
    }
    def mostrar(){
    	 if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
    	def res=Categorias.list(sort:"nombreCate",order:"asc")//enlista 
        //render(resultado.nombre)
        [cate:res]
     
             
    }
    def detalles(){
    	if (session.u!="admin") {
        redirect(controller:"adminp",action:"logeo")
        }
         def resultado=Categorias.get(params.id)//para mostrar detalles de un registro solamente
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
        def resultado=Categorias.get(params.id)
        resultado.delete()
        redirect (action:"mostrar")
       
      
    }
    def modificar(){
    	 if (session.u!="admin") {
        redirect(controller:"adminp",action:"logeo")
        }
     def ped=Categorias.get(params.id)
       
        if (request.method=='POST') {
            ped.nombreCate=params.micate
            ped.descripcion=params.mides
            ped.save()
            redirect(action:"mostrar")
           
          }
          [mod:ped]    
            

    }
     
            

     
            

    
    def listar(){
     

    }

    
}
