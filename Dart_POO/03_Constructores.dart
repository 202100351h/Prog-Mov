void main(){

Telefono miTelefono = Telefono(marca: "Asus", numero: "223233");

Telefono miTelefono2 = Telefono.mandarina(marca: "ROG");

Telefono miTelefono3 = Telefono.prueba(marca: "apple");

print(miTelefono.marca);
print(miTelefono.cargaRapida);

}
class Telefono{
  //Atributos
  String? marca;
  String? numero;
  bool? cargaRapida;

  //Constructor

  //Telefono(this.marca, this.numero, )
  Telefono({this.marca, this.numero});
  Telefono.mandarina({this.marca});
  Telefono.prueba({this.marca});

  //metodos
  void llamar(){
    print('El telefono esta llamando..');
  }

  obtenerNumero(){
    return numero;
  }
}