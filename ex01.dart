class Pessoa {
  
  String _name;  
  int _idade;
  
  Pessoa(this._name ,this._idade){
      if(this._name == ""){
        throw ("Nome não pode ser vazio.");
      } 
      if(this._idade <= 0){
        throw("Idade tem que ser maior que zero.");
      }
  }
  void exibirDados(){
    print(" Nome: $_name \n Idade: $_idade \n\n");
  }
}
void main() {
    Pessoa p1 = Pessoa("Jhonatan",25);
    Pessoa p2 = Pessoa("Jhenifer",24);
    Pessoa p3 = Pessoa("Bernadete",49);
  
    p1.exibirDados();
    p2.exibirDados();
    p3.exibirDados();
}
