abstract class Calculavel {
  double valorFinal();
}

class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  @override
  String toString() {
    return '\nEvento: $evento \n Valor: R\$ ${valor.toStringAsFixed(2)}\n';
  }
}


class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional): super(evento, valor);

  @override
  double valorFinal() {
    return valor + valorAdicional;
  }

  @override
  String toString() {
    return 'Ingresso VIP \nEvento: $evento \n'
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} \n'
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}\n';
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

  @override
  String toString() {
    return 'Ingresso Promocional \nEvento: $evento \n'
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} \n'
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}\n';
  }
}

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(
    String evento,
    double valor,
    this.taxaServico,
    this.localizacao,
  ) : super(evento, valor);

  @override
  double valorFinal() {
    return valor + taxaServico;
  }

  @override
  String toString() {
    return 'Ingresso Camarote \nEvento: $evento \n'
        'Localização: $localizacao \n '
        'Valor Original: R\$ ${valor.toStringAsFixed(2)} \n'
        'Valor Final: R\$ ${valorFinal().toStringAsFixed(2)}\n';
  }
}

class ListaGenerica<T> {
  List<T> itens = [];

  void adicionar(T item) {
    itens.add(item);
  }

  void imprimirItens() {
    for (var item in itens) {
      print(item);
    }
  }
}


void main() {
  IngressoVip ingresso1 = IngressoVip("Show Rock",200.00,80.00);
  IngressoPromocional ingresso2 = IngressoPromocional("Teatro Infantil",100.00,20.00);
  IngressoCamarote ingresso3 = IngressoCamarote("Festival Jazz",300.00,50.00,"Setor A");
  IngressoPromocional ingresso4 = IngressoPromocional("Cinema Especial",60.00,15.00);
  IngressoVip ingresso5 = IngressoVip("Show Pop",180.00,70.00);


  ListaGenerica<Calculavel> lista = ListaGenerica<Calculavel>();

  lista.adicionar(ingresso1);
  lista.adicionar(ingresso2);
  lista.adicionar(ingresso3);
  lista.adicionar(ingresso4);
  lista.adicionar(ingresso5);

  print("Lista de ingresso");
  lista.imprimirItens();
  print("\n");
  print("Valores finais");

  for (var ingresso in lista.itens) {
    print(
      'Valor Final: R\$ ${ingresso.valorFinal()}',
    );
  }
}