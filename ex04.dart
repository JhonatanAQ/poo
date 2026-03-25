ex04.dartclass Lampada {
  bool ligada ;
  int quantidadeLigacoes;
  bool queimada ;

  Lampada(){
    ligada = false;
    quantidadeLigacoes = 0;
    queimada = false ;
  }

  void logar (){
    this.ligada = true;
  }
  void desligar(){
    this.ligada = false;
  }
  void exibirEstado(){
    if(ligada){
      print("Ligada");
    }else{
      print("Desligada");
    }
  }
}

void main() {
  Lampada d1 = Lampada(01, 04, 2010);
  d1.exibirHorario();

}
