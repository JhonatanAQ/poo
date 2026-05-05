class Ingresso {
  String _evento;
  double _valor;
  Ingresso(this._evento,this._valor);
  
  double get valor => _valor;
  
  set valor(double val) {
    if (val >= 0) {
      _valor = val;
    } else {
      print("Erro: O valor não pode ser negativo.");
    }
  }
  
  void exibirResumo(){
    print("nome do evento:$_evento  valor:$_valor");
  }
}

class IngressoVip extends Ingresso {
  double _valorAdicional = 50;
  
  IngressoVip(String evento,double valor) : super(evento,valor){
    super.valor =  super.valor + this._valorAdicional;
  }
}
void main() {
  Ingresso ingresso = Ingresso("cinema na quarta",250);
  IngressoVip ingressoVip = IngressoVip("cinema na quarta",250);
  
  ingresso.exibirResumo();
  print("-"*20);
  ingressoVip.exibirResumo();

}
