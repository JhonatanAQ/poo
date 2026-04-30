class Produto {
  String _nome;
  double _preco;

  Produto(this._nome,this._preco,) : 
        assert(_nome.isNotEmpty, 'O nome do produto não pode ser vazio.'),
        assert(_preco > 0, 'O preço do produto deve ser maior que 0.');

  String exibirProdutoDetalhes() {
    return '  Nome: $_nome, \n  Preço unitário: R\$${_preco.toStringAsFixed(2)}';
  }
}

class Pedido {
  int _numero;
  Produto _produto;
  int _quantidade;

  Pedido(this._numero,this._produto,this._quantidade,)  : 
        assert(_numero > 0, 'O número do pedido deve ser maior que 0.'),
        assert(_quantidade > 0, 'A quantidade deve ser maior que 0.');

  double calcularTotal() {
    double res = _produto._preco * _quantidade;
    return res;
    
  }

  void exibirPedido() {
    double total = calcularTotal();
    print('Detalhes do Pedido');
    print('Número do Pedido: $_numero');
    print('Produto:');
    print('${_produto.exibirProdutoDetalhes()}');
    print('Quantidade: $_quantidade');
    print('Total do Pedido: R\$${total.toStringAsFixed(2)}');

  }
}

void main() {
  Produto smartphone = Produto('Smartphone X', 1299.99);
  Produto foneDeOuvido = Produto('Fone de Ouvido Bluetooth',199.50);


  Pedido pedido1 = Pedido(2023001,smartphone,1,);
  Pedido pedido2 = Pedido(2023002,foneDeOuvido,2,);

  pedido1.exibirPedido();
  print('\n'); 
  pedido2.exibirPedido();
}
