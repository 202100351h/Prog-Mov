void main (List<String>args){
  //valores nulos
  String name = "Juan";
  String? lastname;

  print(name.toUpperCase());
  print(lastname!.toUpperCase());

  if(4>5){
    print(lastname.toUpperCase());
  }

}