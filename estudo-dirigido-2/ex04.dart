class ContaBancaria {
  String _titular;
  double _saldo = 0;
  ContaBancaria(this._titular);
  
  double get(){
    return this._saldo;
  }
  void set(double valor){
    this._saldo = valor;
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
    print("Saldo da cont é de $_saldo");
  }
  
}
class ContaPoupanca extends ContaBancaria{
  double taxaRendimento = 1;
  ContaPoupanca(String titular) : super(titular);
  
  @override
  void aplicarRendimento(){
    double saldo = super.get();
    double rendimento = saldo / 100 * taxaRendimento;
    super.set(rendimento);
  }
}
class ContaCorrente extends ContaBancaria{
  double taxaRendimento = 5;
  ContaCorrente(String titular) : super(titular);
  
  @override
  void aplicarRendimento(){
    double saldo = super.get();
    double rendimento = saldo / 100 * taxaRendimento;
    super.set(rendimento);
  }
}
void main() {
    print('hello ');
}
