class Relogio {
  int _hora;
  int _minuto;
  int _segundo;
  
  Relogio(this._hora ,this._minuto,this._segundo){
      if(this._hora < 0 && this._hora > 23 ){
        throw ("Horas deve estar entre 0 e 23.");
      } 
      if(this._minuto < 0 && this._minuto > 59){
        throw("Minuto deve estar entre 0 e 59.");
      }
      if(this._segundo < 0 && this._segundo > 59){
        throw("Segundo deve estar entre 0 e 59.");
      }
  }
  void exibirHorario(){
    print("\n$_hora: $_minuto: $_segundo ");
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
