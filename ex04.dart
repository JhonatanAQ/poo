class Lampada {
  bool ligada ;
  int quantidadeLigacoes;
  bool queimada ;

  Lampada():ligada = false,quantidadeLigacoes = 0, queimada = false ;
  

  void ligar (){
   
    if(quantidadeLigacoes >= 5 ){
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
    print("\t- Foi ligada $quantidadeLigacoes X.");
    print("\t- E ${ligada ? "não esta queimada":"está queimada"}.");
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
  l1.desligar();
  l1.ligar();
  l1.exibirEstado();

}
