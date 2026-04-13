class Lampada {
  bool _ligada;
  int _intensidade;
  
  Lampada():_ligada = false,_intensidade = 50;
  
  void ligar (){
    _ligada = true;
    if(_intensidade == 0){
      _intensidade = _intensidade + 10;
    }
    exibirEstado();
  }
  void desligar(){
    _ligada = false;
    _intensidade = 0;
    exibirEstado();
  }
  void aumentar(){
    if(_ligada){
      _intensidade = _intensidade + 10;
    }
    exibirEstado();
  }
  void diminuir(){
    if(_ligada){
      _intensidade = _intensidade - 10;
    }
    exibirEstado();
  }
  void exibirEstado(){
    print("\n\nLâmpada 💡 \n\t- Está ${_ligada ? "ligada" : "desligada"}.");
    print("\t- Sua intensidade : ${_intensidade} .");
  }
}

void main() {
  Lampada l1 = Lampada();
  l1.ligar();
  l1.aumentar();
  l1.diminuir();
  l1.diminuir();
  l1.desligar();
  l1.aumentar();
  l1.diminuir();

}
