
abstract class ContaBancaria {
  String _titular;
  double _saldo; 

  ContaBancaria(this._titular, this._saldo);

  double get saldo => _saldo;

  void depositar(double valor) {
    if (valor > 0) {
      _saldo =_saldo + valor;
      print('depósito de R\$ $valor realizado para $_titular.');
    }
  }

  void sacar(double valor) {
    if (valor > 0 && valor <= _saldo) {
      _saldo = _saldo - valor;
      print('saque de R\$ $valor realizado por $_titular.');
    } else {
      print('saldo insuficiente.');
    }
  }

  void exibirSaldo() {
    print('saldo atual de $_titular: R\$ ${_saldo}');
  }
}

abstract interface class Rentavel {
  void aplicarRendimento();
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  final double taxa = 0.01; 

  ContaPoupanca(String titular, double saldoInicial) : super(titular, saldoInicial);

  @override
  void aplicarRendimento() {
    double rendimento = _saldo * taxa;
    _saldo += rendimento;
    print('Rendimento de 1% aplicado na Poupança.');
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  final double taxa = 0.05;

  ContaCorrente(String titular, double saldoInicial) : super(titular, saldoInicial);

  @override
  void aplicarRendimento() {
    double rendimento = _saldo * taxa;
    _saldo += rendimento;
    print('Rendimento de 5% aplicado na Conta Corrente de $_titular.');
  }
}

void main() {
  var poupanca = ContaPoupanca('Jhonatan', 1000.0);
  poupanca.depositar(500.0);
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  print(''); 
  
  var corrente = ContaCorrente('jhenifer', 2000.0);
  corrente.depositar(1000.0);
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}