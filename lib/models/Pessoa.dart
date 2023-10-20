class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  Pessoa(this._nome, this._altura, this._peso);

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }

  String classificacaoIMC(double peso, double altura) {
    double imc = calcularIMC(peso, altura);
    if (imc < 16) {
      return "Magreza Grave";
    } else if (imc >= 16.1 && imc < 17) {
      return "Magreza Moderada";
    } else if (imc >= 17.1 && imc < 18.5) {
      return "Magreza Leve";
    } else if (imc >= 18.5 && imc <= 25) {
      return "Saudável";
    } else if (imc >= 25.1 && imc <= 30) {
      return "Sobrepeso";
    } else if (imc >= 30.1 && imc <= 35) {
      return "Obesidade grau I";
    } else if (imc >= 35.1 && imc <= 40) {
      return "Obesidade grau II (severa)";
    } else {
      return "Obesidade grau III (mórbida)";
    }
  }
}
