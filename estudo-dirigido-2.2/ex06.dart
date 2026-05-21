abstract class Calculavel {
  double valorFinal();
}

class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);
}

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional) : super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto) 
      : super(evento, valor);

  @override
  double valorFinal() {
    return valor - desconto;
  }
}

void main() {

  IngressoVip vip = IngressoVip("Show de Rock", 200.0, 50.0);
  IngressoPromocional promo = IngressoPromocional("Cinema", 40.0, 15.0);


  print("Evento: ${vip.evento}");
  print("Valor Final VIP: R\$ ${vip.valorFinal()}");

  print("\nEvento: ${promo.evento}");
  print("Valor Final Promocional: R\$ ${promo.valorFinal()}");
}
