//Hacer un programa para calcular el área y la longitud de un círculo de cualquier radio requerido.
import 'dart:math';

void main() {
  double radio = 5.0;
  double area = pi * pow(radio, 2);
  double longitud = 2 * pi * radio;
  print('area del circulo es: $area');
  print('longitud del círculo es: $longitud');
}
