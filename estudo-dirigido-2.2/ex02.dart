
class Produto {
  String _nome;
  double _preco;

  Produto(this._nome, this._preco);
}

abstract class Exibivel {
  void exibir();
}

class ProdutoPerecivel extends Produto implements Exibivel {
  String _dataValidade;

  ProdutoPerecivel(String nome, double preco, this._dataValidade) : super(nome, preco);

  @override
  void exibir() {
    print('nome: $_nome');
    print('preço: R\$ ${_preco}');
    print('validade: $_dataValidade');
  }
}

void main() {
  var leite = ProdutoPerecivel('Leite', 5.20, '10/05/2026');
  
  leite.exibir();
}