abstract class Veiculo {
  String _marca;
  String _modelo;
  int _ano;
  
  Veiculo(this._marca, this._modelo, this._ano);
  
  void exibirFicha();
}

class Carro extends Veiculo {
  int _quantidadePortas;
  
  Carro(String marca, String modelo, int ano, this._quantidadePortas) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('marca: $_marca  modelo: $_modelo  ano: $_ano');
    print('portas: $_quantidadePortas');
  }
}

class Moto extends Veiculo {
  int _cilindradas;

  Moto(String marca, String modelo, int ano, this._cilindradas) : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('marca: $_marca modelo: $_modelo ano: $_ano');
    print('cilindradas: ${_cilindradas}cc');
  }
}

void main() {
  var meuCarro = Carro('Nissa', 'GT-R R34', 2002, 2);
  var minhaMoto = Moto('Honda', 'CB 500F', 2023, 500);

  
  meuCarro.exibirFicha();
  minhaMoto.exibirFicha();
}