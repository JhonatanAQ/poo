abstract class Pedido {
  int codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);
  void exibirPedido();
}


class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega) : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    double valorFinal = valorTotal + taxaEntrega;
    print("PEDIDO DELIVERY");
    print("Código: ${codigo}");
    print("Endereço: ${enderecoEntrega}");
    print("Valor Total: R\$ ${valorTotal}");
    print("Taxa de Entrega: R\$ ${taxaEntrega}");
    print("VALOR FINAL: R\$ ${valorFinal}");
    print("-"*40+"\n");
  }
}

class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(int codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print("PEDIDO RETIRADA");
    print("Código: $codigo");
    print("Cliente: $nomeCliente");
    print("Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("-"*40+"\n");
  }
}

void main() {
  Pedido delivery = PedidoDelivery(101, 85.50, "Rua das Flores, 123", 12.00);
  Pedido retirada = PedidoRetirada(102, 45.00, "Mariana Silva");

  delivery.exibirPedido();
  retirada.exibirPedido();
}
