package admin

class ClientesController {

    def index() { }

     def agregar(){

     }

    def guardar(){
        if (request.method=='POST') {
            def var="cli"
            def p = new Clientes(nombre:params.minombre,correo:params.micorreo,
                password:params.mipass.encodeAsMD5(), passwor:var.encodeAsMD5(), fechasol:new Date())
            p.save()
           // render(params.micampo)//para mostrar el campo
            redirect (controller:"admin",action:"login")//para direccionar

        }else{
            render("no valido")
        }


      }


    def showImage(){

    }
    def mostrar(){
        if (!session.u) {
        redirect(controller:"adminp",action:"logeo")
        }
        def res=Clientes.list()//enlista
        //render(resultado.nombre)
        [clien:res]


    }
    def detalles(){



    }
    def buscar(){





    }


    def eliminar(){


    }
    def modificar(){



    }



    def listar(){


    }
    def adm(){

         if (request.method=='POST') {
                def var="adm"
                def p=new  Clientes(nombre:params.minombre,correo:params.micorreo,
                password:var.encodeAsMD5(),passwor:params.mipas.encodeAsMD5(), fechasol:new Date())
                p.save()
                redirect(controller:"admin", action:"index")
         }


    }
}
