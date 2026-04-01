


class Cofrinho {
  double _saldo;
  int _quantidadeDepositos;

  Cofrinho(this._saldo) : _quantidadeDepositos = 0 {
    if (_saldo < 0) {
      throw 'O saldo inicial do cofrinho deve ser maior ou igual a 0. Valor recebido: $_saldo';
    }
  }

  void depositar(double valor) {
    if (valor <= 0) {
      throw 'O valor do depósito deve ser maior que 0. Valor recebido: $valor';
    }
    _saldo += valor;
    _quantidadeDepositos++;
    print('Depósito de \$${valor.toStringAsFixed(2)} realizado. Saldo atual: \$${_saldo.toStringAsFixed(2)}');
  }

  void quebrar() {
    print('\n');
    print('Cofrinho Quebrado! ');
    print('Total acumulado: \$${_saldo.toStringAsFixed(2)}');
    print('Número de depósitos: $_quantidadeDepositos');
    _saldo = 0.0;
    _quantidadeDepositos = 0;
    print('\nCofrinho zerado. Saldo atual: \$${_saldo.toStringAsFixed(2)}');

  }

  void exibirSaldo() {
    print('Saldo atual do cofrinho: \$${_saldo.toStringAsFixed(2)}');
  }
}

void main() {

  print('\nDemonstração do Cofrinho');
  Cofrinho meuCofrinho = Cofrinho(0.0);

  meuCofrinho.exibirSaldo();

  meuCofrinho.depositar(100.50);
  meuCofrinho.depositar(50.0);
  meuCofrinho.exibirSaldo();
  meuCofrinho.depositar(25.75);
  meuCofrinho.exibirSaldo();

  meuCofrinho.quebrar();
}
