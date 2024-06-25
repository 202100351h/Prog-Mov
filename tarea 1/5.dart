//Hacer un programa que calcule la distancia entre dos puntos coordenados conocido
import 'dart:math';

void main() {
  double x1 = 3.0;
  double y1 = 2.0;
  double x2 = 8.0;
  double y2 = 6.0;
  double distancia = sqrt(pow((x2 - x1), 2) + pow((y2 - y1), 2));
  print('La distancia entre los puntos ($x1,$y1) y ($x2,$y2) es: $distancia');
}
