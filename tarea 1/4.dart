//Hacer un programa que calcule el área de un triángulo en función de su semiperímetro
import 'dart:math';

void main() {
  double a = 3.0;
  double b = 4.0;
  double c = 5.0;
  double s = (a + b + c) / 2;
  double area =
      sqrt(s * (s - a) * (s - b) * (s - c)); //utilizando la fórmula de Herón
  print('La area del triangulo es: $area');
}
