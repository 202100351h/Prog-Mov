void main(){
  Trabajador pepe = Trabajador();
  pepe.obtenerNombre();
  pepe.calcular();


}
abstract class Persona{
  String? nombre;
  void obtenerNombre();
}

mixin Administrador{
  String? area;
  void calcular(){
    print("Calculando Salario");
  }
}

class Trabajador extends Persona with Administrador{
  @override
  void obtenerNombre(){
    print("El nombre del trabajador");
  }
}