abstract class Apresentavel {
  void exibirDados();
}

abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}
class ListaGenerica<T> {
  final List<T> itens = [];

  void adicionar(T item) {
    itens.add(item);
  }

  void imprimirItens() {
    for (var item in itens) {
      print(item);
    }
  }

  List<T> obtenerItens() {
    return itens;
  }
}
class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso) : super(nome, idade);

  @override
  void exibirDados() {
    print('Aluno: $nome,idade: $idade curso: $curso');
  }

  @override
  String toString() {
    return 'Aluno: $nome idade: $idade matrícula: $matricula curso: $curso';
  }
}

class Professor extends Pessoa implements Apresentavel {
  String disciplina;
  double salario;

  Professor(String nome, int idade, this.disciplina, this.salario) : super(nome, idade);

  @override
  void exibirDados() {
    print('Professor: $nome  disciplina: $disciplina');
  }

  @override
  String toString() {
    return 'Professor $nome idade: $idade disciplina: $disciplina salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(String nome, int idade, this.area, this.tempoExperiencia) : super(nome, idade);

  @override
  void exibirDados() {
    print('Coordenador: $nome  area: $area - $tempoExperiencia anos exp.');
  }

  @override
  String toString() {
    return 'Coordenador  $nome idade: $idade area: $area experiência: $tempoExperiencia anos';
  }
}

void main() {
  var pessoas = ListaGenerica<Apresentavel>();

  pessoas.adicionar(Aluno('Ana', 19, 'A001', 'ADS'));
  pessoas.adicionar(Aluno('Bruno', 22, 'A002', 'Engenharia de Software'));
  pessoas.adicionar(Professor('Carla', 38, 'POO', 2000.00));
  pessoas.adicionar(Professor('Diego', 41, 'Banco de Dados', 1900.00));
  pessoas.adicionar(Coordenador('Elisa', 45, 'Tecnologia', 15));

  print('Pessoas');
  pessoas.imprimirItens();

  print('\nExibindo Dados');
  for (var pessoa in pessoas.obtenerItens()) {
    pessoa.exibirDados();
  }
}