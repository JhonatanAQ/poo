class Lampada {
  bool _ligada ;
  int _quantidadeLigacoes;
  bool _queimada ;

  Lampada():_ligada = false,_quantidadeLigacoes = 0, _queimada = false ;
  

  void ligar (){
     // quantidadeLigacoes inicia em 0 logo tem que subitrair por 4 .
    if(_quantidadeLigacoes >= 4 ){
      _ligada = false ;
      _queimada = true;
      print("A lâmpada está queimada e não pode ser ligada.");
      return ;
    }
    if(!_ligada){
      _ligada = true;
      print("Lâmpada ligada.");
      _quantidadeLigacoes = _quantidadeLigacoes + 1; 
    }else{
      print("Lâmpada já está ligada.");
    }
    
  }
  
  void desligar(){
      _ligada = false;
      print("Lâmpada desligada.");
  }
  
  void exibirEstado(){

    print("\n\nA lâmpada \n\t- Está ${_ligada ? "ligada" : "desligada"}.");
    // quantidadeLigacoes inicia em 0 logo tem que subitrair por + 1.
    print("\t- Foi ligada ${_quantidadeLigacoes + 1} X."); 
    print("\t- E ${_queimada ?"está queimada":"não esta queimada"}.");
  }
}

void main() {
  Lampada l1 = Lampada();
  l1.ligar();
  l1.ligar();
  l1.desligar();
  l1.ligar();
  l1.desligar();
  l1.ligar();
  l1.desligar();
  l1.ligar();
  l1.desligar();
  l1.ligar();
  l1.exibirEstado();

}
