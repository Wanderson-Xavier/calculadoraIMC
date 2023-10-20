import 'package:calculadora_imc/models/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Cálculo do IMC deve funcionar corretamente', () {
    var pessoa = Pessoa("João", 70, 1.75);
    expect(pessoa.calcularIMC(70, 1.75), 22.857142857142858);
  });
}
