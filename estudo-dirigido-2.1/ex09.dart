class Pedido {
  int _codigo;
  double _valorTotal;
  Pedido(this._codigo,this._valorTotal);
  
  double get valorTotal => _valorTotal;
  set valorTotal(double valor) => _valorTotal = valor;
  
  void exibirPedido(){
    print("Numero do pedido :$_codigo  Valor: R\$ $_valorTotal");
  }
}
class PedidoDelivery extends Pedido {
  String _enderecoEntrega;
  double _taxaEntrega;
 
  PedidoDelivery(int codigo, double valorTotal,this._enderecoEntrega,this._taxaEntrega) : super(codigo,valorTotal);
  
  void calcularValorFinal(){
    double taxa = (super.valorTotal / 100)*_taxaEntrega;
    super.valorTotal = super.valorTotal + taxa;
  }
  
  @override
  void exibirPedido() {
   super.exibirPedido();
   print('Endereço: $_enderecoEntrega');
  }
}
void main() {
  Pedido pedido = Pedido(133,55.99);
  PedidoDelivery pedidoDelivery = PedidoDelivery(134,22.50,"Rua TauTau 123",20);
  
  pedido.exibirPedido();
  print('_'*40);
  pedidoDelivery.calcularValorFinal();
  pedidoDelivery.exibirPedido();

}
