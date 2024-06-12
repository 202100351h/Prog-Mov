void main(){
  chofer pepe = chofer();

  pepe.nombre = 'Jose Lopez';
  pepe.calcularSalario();
  pepe.manejar();
}
//Clase padre
class Trabajador{
  String? nombre;
  double? salario;
  void calcularSalario(){
    print('calcular salario');
  }
}
//Clase hija

class chofer extends Trabajador{
  String? vehiculoAsignado;
  void manejar(){
    print("manejando..");
  }
}

class Ayudante extends Trabajador{
  String? area;
  void gestionar(){
    print("gestionando...");
  }
}