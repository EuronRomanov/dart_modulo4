

import 'dispositivo_electronico.dart';
class Celular  extends DispositivoElectronico{
  Celular(super.codigo,super.marca);
  @override
  imprimir() {
    // TODO: implement imprimir
    print("codigo: $codigo, marca: $marca");
  }

   @override
   registrarInventario(){
     print("registrando inventario");
   }



}

void main() {
  Celular celular=Celular(12,"Ipone");
  celular.imprimir();
  
}