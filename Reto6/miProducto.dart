class MiProducto {
   String codigo;
   double precio;
    String? descripcion;
    MiProducto(this.codigo,this.precio,this.descripcion);
    MiProducto.generico():codigo="",precio=0.0;

imprimir(){
  return "Producto codigo: $codigo, precio: $precio, descripcion: $descripcion";
}
}
void main(){
 var  producto1=MiProducto("P001", 60.4, "aceite 500 ml");
var  producto2=MiProducto.generico();


 print(producto1.imprimir());
  print(producto2.imprimir());
}