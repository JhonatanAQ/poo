class Relogio {
  int hora;
  int minuto;
  int segundo;
  
  Relogio(this.hora ,this.minuto,this.segundo){
      if(this.hora < 0 && this.hora > 23 ){
        throw ("Horas deve estar entre 0 e 23.");
      } 
      if(this.minuto < 0 && this.minuto > 59){
        throw("Minuto deve estar entre 0 e 59.");
      }
      if(this.segundo < 0 && this.segundo > 59){
        throw("Segundo deve estar entre 0 e 59.");
      }
  }
  void exibirHorario(){
    print("\n$hora: $minuto: $segundo ");
  }
}

void main() {
   Relogio r1 = Relogio(15,35,28);    
   Relogio r2 = Relogio(16,36,29);
   Relogio r3 = Relogio(15,35,28);
  
   r1.exibirHorario();
   r2.exibirHorario();
   r3.exibirHorario();
}
