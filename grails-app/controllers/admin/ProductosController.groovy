package admin

class ProductosController {

    def index() { }
     def agregar(){
         if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
      return [cate:Categorias.list(),marc:Marcas.list()]

     }

    def guardar(){
         /*if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }*/
      def archivo= request.getFile('myFile')
      if (!archivo.isEmpty()) {
            String directorio="/abarrotes/"
            String rutaesp=request.getServletContext().getRealPath(directorio)//rutaesp es una variable
            if  (! new File (rutaesp).exists()){
                new File(rutaesp).mkdir()
            }
            String orgName=archivo.getOriginalFilename()
            String filePath =rutaesp + orgName
            File dest = new File(filePath)
            archivo.transferTo(dest)
             }
        if (request.method=='POST') {
            def p = new Productos(nombreProducto:params.miprod,existencia:params.miexis,
                precio:params.mipre,imagen:archivo.getOriginalFilename(),cat:params.cat,marcas:params.marcas,fechasol:new Date())
            p.save()
      redirect (controller:"Productos",action:"agregar")//para direccionar

        }else{
            render("no valido")
        }


      }


    def showImage(){
        def imgs=Productos.get(params.id)
        File img=new File(servletContext.getRealPath("/abarrotes/")+imgs.imagen)
        response.outputStream << img.bytes
        response.outputStream.flush()
    }
    def mostrar(){
         if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }

        def res=Productos.findAll("from Productos as b, Categorias as a, Marcas as c where b.cat=a and b.marcas=c order by b.nombreProducto"
            )

       [prod:res]



    }
    def detalles(){
         if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
        def resultado=Productos.findAll("from Productos as b, Categorias as a, Marcas as c where b.cat=a and b.marcas=c and b.id=${params.id}"
            )//para mostrar detalles de un registro solamente
       // def resultado=Productos.findAll("from Productos as b, Categorias as a, Marcas as c where b.cat=a and b.marcas=c")
        if (!resultado) {
            response.sendError 404
            return
            }
            [det:resultado]




    }
    def buscar(){
         if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
       //def res=Productos.getAll(4,1)//para mostar todos los que estan e el parametro
        //def cate=Categorias.findByNombreCate("Dulces")
        //def res=cate ? Productos.findAllByCat(cate) : []
        //render(res.nombreProducto)
       if (request.method=='POST') {
              def res=Productos.findAllByNombreProductoLike(params.letra+"%")
            // render(params.buscar+"%")
       //

          [bus:res]
       }
       else{
            render ("no valido")
       }





    }


    def eliminar(){
         if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
         def resultado=Productos.get(params.id)

        resultado.delete()
         def file=new File(servletContext.getRealPath("/abarrotes/")+resultado.imagen)
        file.delete()
        redirect (action:"mostrar")


    }
    def modificar(){
          if (session.u!="admin") {
        redirect(controller:"admin",action:"logeo")
        }
      def ped=Productos.get(params.id)


        if (request.method=='POST') {
            def varc=Categorias.get(params.micat)
            def varm=Marcas.get(params.mimarca)
            ped.nombreProducto=params.miprod
            ped.existencia=params.miexis.toInteger()
            ped.precio=params.mipre.toDouble()
            ped.cat=varc
            ped.marcas=varm
            ped.save()
            redirect(action:"mostrar")

          }
         return [mod:ped, marc:Marcas.list(), categ:Categorias.list()]



    }



    def listar(){
       if (session.u=="admin") {
          flash.message=null

        }else{
      flash.message=session.u

        }
      def p=Productos.list()
      [prod:p]
      //render(p)
     //render(view:"../",model:p)

    }
    def lista(){
      if (session.u=="admin") {
          flash.message=null

        }else{
      flash.message=session.u

        }
         def p=Productos.list()
      [prod:p]



    }
    def redirec(){
      redirect(controller:"admin",action:"login")
    }
    def logout(){
      session.u=null
      redirect(controller:"productos",action:"listar")

    }
    def prueba(){
      if (request.method=='POST') {
        def res=Productos.get(params.id)
      //render("hhhh")
      render("<ul class='cart-header' id='b${res.id}'><li class='ring-in'><img src='${createLink(controller:'Productos',action:'showImage',id:res.id)}' width='70' /></li><li><span>${res.nombreProducto}</span></li><li><span>${res.precio}</span></li><li><span>${params.cant}</span></li><div class='clearfix'> </div><div class='close1' id='${res.id}' onclick='el(this.id);'></div></ul>")
      }
    }
        //def res=Productos.list()
     //render(res.nombreProducto)
      //render("holaaaaaaaaaaa")
       def prelis(){
        
        if (request.method=='POST') {
          //render("Ventas ")
          //def se=session.u
         // def pro=params.cp

            
             render(params.tot)
            render(session.u) 

              
             //def c="yo"
            // def ven=new Ventas("insert into ventas (nombrecli,fechaventa, products,cantidadprod,total) values ('${session.u}','${new Date()}','${params.cp}','${cantidadprod.cad}','${total.to}'")
             //def ven=new Ventas(nombrecli:${session.u},fechaventa:new Date(),products:${params.cad},cantidadprod:${params.cp},total:${params.to})
            def ven=new Ventas(nombrecli:session.u,fechaventa:new Date(),total:params.tot.toDouble())
            //def ven=request.JSON
             ven.save()
            // render(ven.to)
             //render(venta)  
             //redirect(action:"listar")
             //render(2)
             // def sub=((params.cant.toInteger())*(params.pre.toDouble()))
              //render(sub)
             //   render(params)
                         // def l=Productos.get(params.id)

             // def venta=new Ventas("insert into ventas (cliente,fecha, total) values ('lalo',${new Date()},${id.params.pre})")         
               // def ventas=new Ventas(cliente:session.u,total:params.pre,fecha:new Date())
                 //venta.local=params.id
                 //venta.total=params.price
                 //venta.fecha=new Date()
                 //venta.clie=params.clie
               
               
                 //render(venta.id)
                 
                 //venta.save()
                // render(3)

              }
           }
           
        }


