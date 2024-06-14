import 'dispositivo_electronico.dart';
import 'celular.dart';
class Computador extends DispositivoElectronico{
  int capacidadDisco;
  Computador(super.codigo,super.marca,this.capacidadDisco);

  @override
  imprimir() {
    // TODO: implement imprimir
   super.imprimir();

    print( "capacida de disco: $capacidadDisco");
    
  }
 @override
   registrarInventario(){
     print("registrando inventario");
   }
}

void main(){
  Computador computador=Computador(1,"HP",500);
  computador.imprimir();
  computador.registrarInventario();
  Celular celular=Celular(12,"Ipone");
  celular.imprimir();
  celular.registrarInventario();
}