
class Circulo {
  static const double PI = 3.14;
  final double raio;
  final String cor;

  Circulo(this.raio, this.cor)
      : assert(raio > 0, 'O raio deve ser maior que zero.'),
        assert(cor.isNotEmpty, 'A cor não pode ser vazia.');

  double calcularArea() {
    return PI * raio * raio;
  }

  double calcularPerimetro() {
    return 2 * PI * raio;
  }

  void exibirResumo() {
    print('Resumo do Círculo');
    print('Raio: ${raio.toStringAsFixed(2)}');
    print('Cor: $cor');
    print('Área: ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
  }
}

void main() {
  Circulo circulo1 = Circulo(5.0, 'Vermelho');
  Circulo circulo2 = Circulo(10.0, 'Azul');
  Circulo circulo3 = Circulo(2.5, 'Verde');

  circulo1.exibirResumo();
  print(''); 
  circulo2.exibirResumo();
  print('');
  circulo3.exibirResumo();
 
}
