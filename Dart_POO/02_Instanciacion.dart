void main(){

Telefono miTelefono = Telefono('Asus', '22323232323', true);
Telefono manzana = Telefono('LG', '22323232323', false);

print(manzana);
print(manzana.marca);
print(manzana.numero);
print(manzana.cargaRapida);

miTelefono.marca = 'LG';
print(miTelefono.marca);
miTelefono.llamar();
String numeroTelefono = miTelefono.obtenerNumero();
print(numeroTelefono);

Telefono apple = Telefono('LG', '22323232323', false);

print(apple);
print(apple.marca);

}
class Telefono{
  //Atributos
  String marca;
  String numero;
  bool cargaRapida;

  //Constructor

  Telefono(this.marca, this.numero, this.cargaRapida);

  //metodos
  void llamar(){
    print('El telefono esta llamando..');
  }

  obtenerNumero(){
    return numero;
  }
}