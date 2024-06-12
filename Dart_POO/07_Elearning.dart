void main() {
   Perro fido = Perro(peso:20, nombrex: "Vinosolo", tipox: "Mamifero");
   print(fido.nombre);
}
//clase padre
class Animal{

String? nombre;
String? tipo;

Animal({this.nombre, this.tipo});

}

//clase hija

class Perro extends Animal{
  double? peso;
  Perro({this.peso, nombrex, tipox}) : super(nombre: "Fido",tipo: "Mamifero");
}