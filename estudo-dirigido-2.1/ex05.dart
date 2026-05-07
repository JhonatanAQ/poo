class Pessoa {
  String _nome;
  int _idade;
  Pessoa(this._nome,this._idade);
  void exibirDados(){
    print("nome:$_nome  idade:$_idade");
  }
}

class Aluno extends Pessoa{
  String _curso;
  int _matricula = 1;
  Aluno(String nome,int idade,this._curso,this._matricula) : super(nome,idade);
  @override
  void exibirDados(){
    super.exibirDados();
    print('curso:$_curso matricula:$_matricula');
  }
}
void main() {
  Pessoa pessoa = Pessoa("Jhonatan-1",25);
  Aluno aluno = Aluno("Jhonatan-2",25,"ADS",123);
  
  pessoa.exibirDados();
  print("-"*20);
  aluno.exibirDados();

}
