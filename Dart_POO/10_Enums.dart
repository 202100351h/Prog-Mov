void main(){
  print(Colores.values);
  Colores.values.forEach((item){
//    print(item.index);
print(item.name);
  });
}

enum Colores {
  rojo,
  azul,
  amarillo
}
