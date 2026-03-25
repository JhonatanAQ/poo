class Pessoa {
  
  String name;  
  int idade;
  
  Pessoa(this.name ,this.idade){
      if(this.name == ""){
        throw ("Nome não pode ser vazio.");
      } 
      if(this.idade <= 0){
        throw("Idade tem que ser maior que zero.");
      }
  }
  void exibirDados(){
    print(" Nome: $name \n Idade: $idade \n\n");
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
