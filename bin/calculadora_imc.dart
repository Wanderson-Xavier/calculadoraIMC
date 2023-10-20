import 'dart:io';

import 'package:calculadora_imc/models/Pessoa.dart';

void main() {
  try {
    print("Digite seu nome:");
    String nome = stdin.readLineSync() ?? "";

    print("Digite seu peso (em kg):");
    double peso = double.parse(stdin.readLineSync()!);

    print("Digite sua altura (em metros):");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    print(
        "IMC de ${pessoa.getNome()}: ${pessoa.calcularIMC(peso, altura).toStringAsFixed(2)}");
    print(pessoa.classificacaoIMC(peso, altura));
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
