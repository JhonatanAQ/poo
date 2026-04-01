import 'dart:math';


class Triangulo {
  double _lado1 = 0;
  double _lado2 = 0;
  double _lado3 = 0;
  String _caractere = "";

  Triangulo(
    this._lado1,
    this._lado2,
    this._lado3,
    this._caractere
  );

  double calcularPerimetro() {
    double res = _lado1 + _lado2 + _lado3;
    return res;
  }


  double calcularArea() {
    double s = calcularPerimetro() / 2; 
    double areaSquared = s * (s - _lado1) * (s - _lado2) * (s - _lado3);
    return sqrt(max(0, areaSquared));
  }


  int _getDrawingHeight() {
    double averageSide = (_lado1 + _lado2 + _lado3) / 3;
    return max(2, (averageSide * 0.8).round());
  }

  void desenharEsquerda() {
    int height = _getDrawingHeight();
    print('\nTriângulo Esquerdo (altura baseada em lados):');
    for (int i = 1; i <= height; i++) {
      print(_caractere * i);
    }
  }


  void desenharCentralizado() {
    int height = _getDrawingHeight();

    int maxWidth = 2 * height - 1;
    print('\nTriângulo Centralizado (altura baseada em lados):');
    for (int i = 1; i <= height; i++) {
      int numChars = 2 * i - 1;
      int padding = (maxWidth - numChars) ~/ 2; 
      print(' ' * padding + _caractere * numChars);
    }
  }

  void exibirResumo() {
    print('Lado 1: ${_lado1.toStringAsFixed(2)}');
    print('Lado 2: ${_lado2.toStringAsFixed(2)}');
    print('Lado 3: ${_lado3.toStringAsFixed(2)}');
    print('Caractere de Desenho: $_caractere');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('---------------------------\n');
  }
}

void main() {

  Triangulo? triangulo1;

  print('Criando Triângulo 1 (3, 4, 5) com caractere "*"');
  triangulo1 = Triangulo(3.0, 4.0, 5.0,'*');
  triangulo1.exibirResumo();
  triangulo1.desenharEsquerda();
  triangulo1.desenharCentralizado();


  print('\nAlterando lado 1 do Triângulo 1 para 6.0 ');
  triangulo1._lado1 = 6.0; 
  triangulo1.exibirResumo();
  triangulo1.desenharEsquerda();
  triangulo1.desenharCentralizado();

  print('\n---------------------------');


  Triangulo? triangulo2;

  print('Criando Triângulo 2 (7, 7, 7) com caractere "#"');
  triangulo2 = Triangulo( 7.0, 7.0, 7.0,'#');
  triangulo2.exibirResumo();
  triangulo2.desenharEsquerda();
  triangulo2.desenharCentralizado();  

  
  print('\nDimensões do Triângulo 2 após tentativa inválida:');
  triangulo2.exibirResumo();
  triangulo2.desenharEsquerda();
  triangulo2.desenharCentralizado();


  print('\n---------------------------');

}
