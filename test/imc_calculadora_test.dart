import 'package:imc_calculadora/imc_calculadora.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcula o IMC', () {
    expect(app.calcularIMC(70, 1.7), greaterThan(24));
  });
}
