//Hacer un programa que tome temperatura asignada en una variable en grados Celsius y diga a cuantos grados equivale en grados Fahrenheit y Kelvin.
void main() {
  double gradosCelsius = 25;

  /// Ponga aquí el valor de los grados Celsius;
  double gradosFahrenheit = (gradosCelsius * 9 / 5) + 32;
  double gradosKelvin = gradosCelsius + 273.15;
  print('Los grados celsius puestos son: $gradosCelsius');
  print('La convercion en grados fahrenheit: $gradosFahrenheit');
  print('La convercion en grados kelvin: $gradosKelvin');
}
