class Producto{
       String codigo="";
       String nombre="";
       String? descripcion;
       bool activo=true;
       double precio=0.0;
       int? stock;
}

void main(){
  Producto p1=Producto();
  p1.codigo="P001";
  p1.nombre="cafe";
  p1.descripcion="100 g";
  p1.activo=true;
  p1.precio=5.6;
  p1.stock=100;
}