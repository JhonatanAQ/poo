class Quadrado {
  double lado;
  String caractere;

  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) {
      throw('O lado do quadrado deve ser maior que 0.');
    }
    if (caractere.isEmpty) {
      throw('O caractere não pode ser vazio.');
    }
    if (caractere.length != 1) {
      throw('O caractere usado no desenho deve ter apenas 1 símbolo.');
    }
  }

  double calcularArea() {
    return lado * lado;
  }

  double calcularPerimetro() {
    return 4 * lado;
  }

  void desenhar() {
    print('\nDesenho do Quadrado (lado: ${lado.toStringAsFixed(1)}, caractere: "$caractere"):');
    
    int intLado = lado.round(); 

    if (intLado == 0) {
      print('(Não é possível desenhar um quadrado com lado arredondado para 0)');
      return;
    }

    for (int i = 0; i < intLado; i++) {
      String row = '';
      for (int j = 0; j < intLado; j++) {
        row += caractere;
        if (j < intLado - 1) {
          row += ' '; 
        }
      }
      print(row);
    }
  }

  void exibirResumo() {
    print('\nResumo do Quadrado');
    print('Lado: ${lado.toStringAsFixed(1)}');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('Caractere: "$caractere"\n');
  }

  bool ehIgual(Quadrado outroQuadrado) {
    const double epsilon = 0.000001;
    return (lado - outroQuadrado.lado).abs() < epsilon && caractere == outroQuadrado.caractere;
  }
}

void main() {
  Quadrado q1 = Quadrado(5.0, '#');
  Quadrado q2 = Quadrado(7.5, '*');
  Quadrado q3 = Quadrado(4.0, 'X');
  Quadrado q4 = Quadrado(4.0, 'X');
  Quadrado q5 = Quadrado(0.8, 'o');
  Quadrado q6 = Quadrado(25.0, '+');

  List<Quadrado> quadrados = [q1, q2, q3, q4, q5, q6];

  for (int i = 0; i < quadrados.length; i++) {
      quadrados[i].exibirResumo();
      quadrados[i].desenhar();
  }

  print('Quadrado 1 (lado=5.0, caractere="#") e Quadrado 2 (lado=7.5, caractere="*") são iguais? ${q1.ehIgual(q2)}'); 
  print('Quadrado 1 (lado=5.0, caractere="#") e Quadrado 3 (lado=4.0, caractere="X") são iguais? ${q1.ehIgual(q3)}'); 
  print('Quadrado 3 (lado=4.0, caractere="X") e Quadrado 4 (lado=4.0, caractere="X") são iguais? ${q3.ehIgual(q4)}'); 
  print('Quadrado 2 (lado=7.5, caractere="*") e Quadrado 4 (lado=4.0, caractere="X") são iguais? ${q2.ehIgual(q4)}'); 
  print('Quadrado 5 (lado=0.8, caractere="o") e Quadrado 1 (lado=5.0, caractere="#") são iguais? ${q5.ehIgual(q1)}'); 
}
