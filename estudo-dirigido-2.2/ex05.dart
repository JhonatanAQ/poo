
abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados();
}

class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso) : super(nome, idade);

  @override
  void exibirDados() {
    print('Aluno');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Matrícula: $matricula');
    print('Curso: $curso\n');
  }
}

class Professor extends Pessoa {
  String disciplina;
  double salario;

  Professor(String nome, int idade, this.disciplina, this.salario) : super(nome, idade);

  @override
  void exibirDados() {
    print('Professor');
    print('Nome: $nome');
    print('Idade: $idade');
    print('Disciplina: $disciplina');
    print('Salário: R\$ ${salario}\n');
  }
}

void main() {
  Pessoa aluno = Aluno('Jhonatan Andrade', 25, '202604', 'poo');
  Pessoa professor = Professor('CHAUA', 35, 'poo', 9500);

  aluno.exibirDados();
  professor.exibirDados();
}
