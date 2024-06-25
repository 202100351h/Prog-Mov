//Hacer un programa que tome los segundos asignados en una variable y diga cuantas horas, minutos y segundos hay simultáneamente.
void main() {
  int segundosTotales = 333333;
  int horas = segundosTotales ~/ 3600;
  int minutos = (segundosTotales % 3600) ~/ 60;
  int segundos = segundosTotales % 60;
  print('Los segundos puestos son: $segundosTotales');
  print(
      'La conversion seria $horas horas con $minutos minutos y $segundos segundos');
}
