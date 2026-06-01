abstract class Bonificavel {
  double calcularBonus();
}

abstract class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  @override
  String toString() {
    return 'Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}

class FuncionarioComum extends Funcionario implements Bonificavel {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  double calcularBonus() {
    return salario * 0.05;
  }

  @override
  String toString() {
    return 'Funcionário Comum | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}

class Gerente extends Funcionario implements Bonificavel {
  String setor;

  Gerente(String nome, double salario, this.setor)
      : super(nome, salario);

  @override
  double calcularBonus() {
    return salario * 0.15;
  }

  @override
  String toString() {
    return 'Gerente | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Setor: $setor';
  }
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

  List<T> obterItens() {
    return itens;
  }
}

void main() {
  ListaGenerica<Bonificavel> funcionarios = ListaGenerica<Bonificavel>();

  funcionarios.adicionar(FuncionarioComum('Ana', 2500));
  funcionarios.adicionar(FuncionarioComum('Bruno', 3200));
  funcionarios.adicionar(Gerente('Carla', 7000, 'Financeiro'));
  funcionarios.adicionar(FuncionarioComum('Diego', 2800));
  funcionarios.adicionar(Gerente('Elisa', 8500, 'Tecnologia'));

  funcionarios.imprimirItens();

  for (var funcionario in funcionarios.obterItens()) {
    print('Bônus: R\$ ${funcionario.calcularBonus().toStringAsFixed(2)}');
  }
}