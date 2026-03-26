class Aluno {
  String _nome;
  double _nota1;
  double _nota2 ;

  Aluno(this._nome,this._nota1,this._nota2){
    if(_nota1 < 0 || _nota1 > 10 ){
      throw("Primeira nota devem estar entre 0 e 10");
    }
    if(_nota2 < 0 || _nota2 > 10 ){
      throw("Sergunda nota devem estar entre 0 e 10");
    }
    
  }
  
  double calcularMedia(){
    double res = _nota1+_nota2/2;
    
    return res;
  }
  void verificarAprovacao(){
    double res = _nota1+_nota2/2;
    
    if(res >= 6){
      
    }else{
      
    }

  }
  void exibirBoletim(){

  }
  
}

void main() {
  Aluno l1 = Aluno();
  l1.ligar();

}
