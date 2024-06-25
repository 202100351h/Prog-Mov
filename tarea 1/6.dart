//Hacer un programa que calcule el ángulo en grados centesimales y radiales si tenemos grados sexagesimales.
import 'dart:math';

void main() {
  double gradosSexagesimales = 120; //ponga aca el angulo en grado sexagesimal
  double gradosCentesimales = gradosSexagesimales * (10 / 9);
  double radianes = gradosSexagesimales * (pi / 180);
  print('Los grados sexagesimales puestos son: $gradosSexagesimales');
  print('En grados centesimales: $gradosCentesimales');
  print('En radianes: $radianes');
}
