class Producto{
       String codigo="";
       String nombre="";
       String? descripcion;
       bool activo=true;
       double precio=0.0;
       int? stock;
}

void main(){
  Producto p1;
  p1=new Producto();
  p1.codigo="P001";
  p1.nombre="cafe";
  p1.descripcion="100 g";
  p1.activo=true;
  p1.precio=5.6;
  p1.stock=100;

print("Producto ");
print("codigo: ${p1.codigo}");
print("nombre: ${p1.nombre}");
print("descrippción: ${p1.descripcion}");
print("activo: ${p1.activo}");
print("precio: ${p1.precio}");
print("stock: ${p1.stock} \n");

Producto p2=Producto();
  p2.codigo="P002";
  p2.nombre="arroz";
  p2.descripcion="25 lb";
  p2.activo=false;
  p2.precio=15.5;
  p2.stock=10;

print("Producto ");
print("codigo: ${p2.codigo}");
print("nombre: ${p2.nombre}");
print("descrippción: ${p2.descripcion}");
print("activo: ${p2.activo}");
print("precio: ${p2.precio}");
print("stock: ${p2.stock} \n");



final p3=Producto();
  p3.codigo="P003";
  p3.nombre="azucar";
  p3.descripcion="60 lb";
  p3.activo=false;
  p3.precio=9.5;
  p3.stock=3000;

print("Producto ");
print("codigo: ${p3.codigo}");
print("nombre: ${p3.nombre}");
print("descrippción: ${p3.descripcion}");
print("activo: ${p3.activo}");
print("precio: ${p3.precio}");
print("stock: ${p3.stock}");

}
