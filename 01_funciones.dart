void main (List <String> args){
  //funciones sin retorno y con retorno
  int n1 = 5;
  int n2 = 6;
  print("Funciones!!!");
  String name = "MenLii";
  MostrarMensaje(name);
  print (suma(n1, n2));
}

void MostrarMensaje(String x){
  print("-----------------");
  print("Mensaje de una funcion: $x");
  print("-----------------");
}

suma(int a, int b){
  return a + b;
}