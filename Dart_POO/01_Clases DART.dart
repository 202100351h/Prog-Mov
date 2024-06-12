void main(){

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
    print('El telefono esta llamando..')
  }

  obtenerNumero(){
    return numero;
  }
}