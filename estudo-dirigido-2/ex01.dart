class Funcionario {
  String _nome;
  double _salario;
  Funcionario(this._nome,this._salario);
  
  void exibirDados(){
     print('Nome: $_nome  Salário: R\$ $_salario');
  }
}
class Gerente extends Funcionario {
  String setor;
  Gerente(String nome, double salario, this.setor):super(nome,salario);
  
  @override
  void exibirDados() {
   super.exibirDados();
   print('Setor: $setor');
  }
}
void main() {
   Funcionario funcionario = Funcionario("jhonatan",2000);
  funcionario.exibirDados();
  print("-"*40);
  Gerente gerente = Gerente("jhonatan",2000,"produção");
  gerente.exibirDados();
}
  