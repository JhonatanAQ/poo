class Lampada {
  bool ligada ;
  int quantidadeLigacoes;
  bool queimada ;

  Lampada():ligada = false,quantidadeLigacoes = 0, queimada = false ;
  

  void ligar (){
     // quantidadeLigacoes inicia em 0 logo tem que subitrair por 4 .
    if(quantidadeLigacoes >= 4 ){
      ligada = false ;
      queimada = true;
      print("A lâmpada está queimada e não pode ser ligada.");
      return ;
    }
    if(!ligada){
      ligada = true;
      print("Lâmpada ligada.");
      quantidadeLigacoes = quantidadeLigacoes + 1; 
    }else{
      print("Lâmpada já está ligada.");
    }
    
  }
  
  void desligar(){
      ligada = false;
      print("Lâmpada desligada.");
  }
  
  void exibirEstado(){

    print("\n\nA lâmpada \n\t- Está ${ligada ? "ligada" : "desligada"}.");
    // quantidadeLigacoes inicia em 0 logo tem que subitrair por + 1.
    print("\t- Foi ligada ${quantidadeLigacoes + 1} X."); 
    print("\t- E ${queimada ?"está queimada":"não esta queimada"}.");
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
