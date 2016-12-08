package admin

class AdminController {
    def index() {

             if (session.u!='admin') {
        redirect(controller:"admin",action:"logeo")
        }
/*
      if (control()==false) {
      redirect(action:"logueo")
      }*/
    }
       // redirect(action:"principal")
    // def principal() {
        //redirect(action:"logeo")
      //  if (!session.u) {
        //  redirect(action:"logeo")
        //}


     //}
    def logeo(){
    	if (request.method=='POST') {
            def res=Clientes.findByCorreoAndPasswor(params.micorreo,params.mipas.encodeAsMD5())//agregar .encodeAsMD5()
            if (((res)&&(res.password=="b09c600fddc573f117449b3723f23d64"))) /*if (res)*/{//comprobar esta: d41d8cd98f00b204e9800998ecf8427e

                session.u='admin'
                redirect(action:"index")

            }else{
            def res1=Clientes.findByCorreoAndPassword(params.micorreo,params.mipass.encodeAsMD5())//agregar .encodeAsMD5()
            if (((res1)&&(res1.passwor=="0898b22730d57afcd394d8e4889ece4a"))) {
                session.u=res1.nombre
           redirect(controller:"productos",action:"listar")

            }else{
              flash.message="no se ha podido iniciar la session: intente de nuevo"
                redirect(controller:"admin",action:"login")
            }
                //redirect(action:'logeo')
            }
        }

    }
    def login(){}
    def logout(){
        session.u=null
       // redirect(view:"")
       redirect(view:"/login")

    }
}
