class Veiculo {
  String _marca;
  String _modelo;
  int _ano;
  Veiculo(this._marca,this._modelo,this._ano);
  
  void exibirFicha(){
     print('Marca: $_marca Modelo: $_modelo Ano: R\$ $_ano');
  }
}
class Carro extends Veiculo {
  int _quantidadePortas;
  Carro(String marca,String modelo,int ano,this._quantidadePortas) : super(marca,modelo,ano);
  
  @override
  void exibirFicha() {
   super.exibirFicha();
   print('$_quantidadePortas Portas');
  }
}
void main() {
    Veiculo veiculo = Veiculo("nissan","GT-R34",2026);
    veiculo.exibirFicha();
    print('_'*40);
    Carro carro = Carro("nissan","GT-R34",2026,2);
    carro.exibirFicha();
}
  