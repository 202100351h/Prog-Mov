void main(){

Telefono miTelefono = Telefono(marca: "Pepino", numero: "322", cargaRapida: true);
miTelefono.miMarca = "LG";
print(miTelefono.miMarca);

}
class Telefono{
  //Atributos
  String? marca;
  String? numero;
  bool? cargaRapida;

  //Getters - Setters
  String get miMarca{
    return marca ?? 'no hay datos';
  }

  set miMarca(String marcax){
    marca = marcax;
  }

  String get miNumero{
    return numero ?? 'no hay datos';
  }

  set miNumero(String numerox){
    numero = numerox;
  }
  //Constructor

  //Telefono(this.marca, this.numero, )
  Telefono({this.marca, this.numero, this.cargaRapida});

  //metodos
  void llamar(){
    print('El telefono esta llamando..');
  }

  obtenerNumero(){
    return numero;
  }
}