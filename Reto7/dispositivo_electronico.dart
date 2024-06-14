abstract class DispositivoElectronico {
  int codigo;
  String? marca;

  DispositivoElectronico(this.codigo,this.marca);
  imprimir(){
    print("codigo: $codigo, marca: $marca");

  }

  registrarInventario();
}