
abstract class Funcionario {
  String _nome;
  double _salario;

  Funcionario(this._nome, this._salario);
  
  void exibirDados();
}


class FuncionarioComum extends Funcionario {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  void exibirDados() {
    print("nome: $_nome");
    print("salário: R\$ ${_salario}");
  }
}

class Gerente extends Funcionario {
  String _setor;
  
  Gerente(String nome, double salario, this._setor) : super(nome, salario);

  @override
  void exibirDados() {
    print("nome: $_nome");
    print("setor: $_setor");
    print("salário: R\$ ${_salario}");
  }
}

void main() {

  var comum = FuncionarioComum("Jessica", 2200.0);
  var gerente = Gerente("Jhonatan", 8000.0, "Tecnologia");

  comum.exibirDados();
  print("");
  gerente.exibirDados();
}