//Hacer un programa para que lea el sueldo de tres empleados y aplíqueles un aumento del 10, 12 y 15% respectivamente. Escriba el sueldo final.
void main() {
  double sueldo1 = 100;
  double sueldo2 = 120;
  double sueldo3 = 150;
  double aumento1 = sueldo1 * 1.10;
  double aumento2 = sueldo2 * 1.12;
  double aumento3 = sueldo3 * 1.15;
  print('Sueldo final del empleado one:\$${aumento1.toStringAsFixed(2)}');
  print('Sueldo final del empleado thow: \$${aumento2.toStringAsFixed(2)}');
  print('Sueldo final del empleado three: \$${aumento3.toStringAsFixed(2)}');
}
