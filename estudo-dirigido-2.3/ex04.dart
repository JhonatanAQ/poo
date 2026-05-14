
abstract class Rentavel {
  void aplicarRendimento();
}

class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria(this._titular, this._saldo);

  String toString() {
    return 'titular: $_titular  saldo: R\$ ${_saldo}';
  }
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    double rendimento = _saldo * 0.01;
    _saldo = _saldo + rendimento;
  }
  
  @override
  String toString() {
    return 'Conta Poupança -> ${super.toString()}';
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    double rendimento = _saldo * 0.05;
    _saldo = _saldo + rendimento;
  }

  @override
  String toString() {
    return 'Conta Corrente -> ${super.toString()}';
  }
}

class ContaInvestimento extends ContaBancaria implements Rentavel {
  ContaInvestimento(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    double rendimento = _saldo * 0.08;
    _saldo = _saldo + rendimento;
  }

  @override
  String toString() {
    return 'Conta Investimento -> ${super.toString()}';
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

  ContaPoupanca conta1 = ContaPoupanca("Ana", 1000.00);
  ContaCorrente conta2 = ContaCorrente("Bruno", 1500.00);
  ContaInvestimento conta3 = ContaInvestimento("Carla", 5000.00);
  ContaPoupanca conta4 = ContaPoupanca("Diego", 2500.00);
  ContaCorrente conta5 = ContaCorrente("Elisa", 800.00);

  ListaGenerica<Rentavel> lista = ListaGenerica<Rentavel>();

  lista.adicionar(conta1);
  lista.adicionar(conta2);
  lista.adicionar(conta3);
  lista.adicionar(conta4);
  lista.adicionar(conta5);

  print("Antes do rendimento");
  lista.imprimirItens();


  for (var conta in lista.itens) {
    conta.aplicarRendimento();
  }
  print("\n");
  print("Depois do rendimento");
  lista.imprimirItens();
}