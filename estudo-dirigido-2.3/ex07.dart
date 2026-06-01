abstract class Sonoro {
  void emitirSom();
}

abstract class Animal {
  String nome;
  Animal(this.nome);
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
class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Au Au!');
  @override String toString() => 'Cachorro: $nome';
}

class Gato extends Animal implements Sonoro {
  Gato(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Miau!');
  @override String toString() => 'Gato: $nome';
}

class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Piu Piu!');
  @override String toString() => 'Pássaro: $nome';
}

class Vaca extends Animal implements Sonoro {
  Vaca(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Muuu!');
  @override String toString() => 'Vaca: $nome';
}

class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);
  @override void emitirSom() => print('$nome diz: Meee!');
  @override String toString() => 'Ovelha: $nome';
}

void main() {
  var animais = ListaGenerica<Sonoro>();

  animais.adicionar(Cachorro('Rex'));
  animais.adicionar(Gato('Mimi'));
  animais.adicionar(Passaro('Piu'));
  animais.adicionar(Vaca('Mimosa'));
  animais.adicionar(Ovelha('Dolly'));

  print('Animais cadastrados');
  animais.imprimirItens();

  print('\nSons dos Animais');
  for (var animal in animais.obtenerItens()) {
    animal.emitirSom();
  }
}