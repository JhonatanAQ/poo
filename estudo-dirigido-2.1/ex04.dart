class ContaBancaria {
  String _titular;
  double _saldo = 0;
  ContaBancaria(this._titular);
  
  double get saldo => _saldo;
  
  set saldo(double valor) {
    if (valor >= 0) {
      _saldo = valor;
    } else {
      print("Erro: O saldo não pode ser negativo.");
    }
  }
  void depositar(double valor){
    this._saldo = _saldo + valor;
  }
  void sacar(double valor){
    if(_saldo < valor){
      print("O valor do saque e menor que o que tem na conta");
    }else{
      this._saldo = _saldo - valor;
    }
  }
  void exibirSaldo(){
    print("$_titular seu saldo da conta  é de R\$ $_saldo ");
  }
  
}
class ContaPoupanca extends ContaBancaria{
  double taxaRendimento = 1;
  ContaPoupanca(String titular) : super(titular);

  void aplicarRendimento(){
    double rendimento = super.saldo * (taxaRendimento / 100);
    super.saldo = super.saldo + rendimento;
  }
}
class ContaCorrente extends ContaBancaria{
  double taxaRendimento = 5;
  ContaCorrente(String titular) : super(titular);
  
  void aplicarRendimento(){
    double rendimento = super.saldo * (taxaRendimento / 100);
    super.saldo = super.saldo + rendimento;
  }
}
void main() {
  ContaBancaria contaBancaria = ContaBancaria("Jhonatan-1");
  ContaPoupanca contaPoupanca = ContaPoupanca("Jhonatan-2");
  ContaCorrente contaCorrente = ContaCorrente("Jhonatan-3");
  void exibir(){
    contaBancaria.exibirSaldo();
    contaPoupanca.exibirSaldo();
    contaCorrente.exibirSaldo();
    print("-"*45);
  }
  exibir();
  contaBancaria.depositar(5.5);
  contaPoupanca.depositar(7.5);
  contaCorrente.depositar(2.3);
  exibir();
  contaPoupanca.aplicarRendimento();
  contaCorrente.aplicarRendimento();
  exibir();
}
