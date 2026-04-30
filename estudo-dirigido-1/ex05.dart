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
    double sum = _nota1+_nota2;
    double res = sum/2;
    return res;
  }
  void verificarAprovacao(){
    double res = calcularMedia();
  
    
    if(res >= 6){
      print("Aprovado:$res");
    }else{
      print("Reprovado:$res");
    }
  }
  void exibirBoletim(){
    print("Nome:$_nome");
    print("Primeira nota:$_nota1");
    print("Segunda nota:$_nota2");
    verificarAprovacao();
  }
  
}

void main() {
  Aluno l1 = Aluno("jhonatan",4.4,5.5);
  print("Verificar Aprovação");
  l1.verificarAprovacao();
  print("\nExibir Boletim");
  l1.exibirBoletim();

}
