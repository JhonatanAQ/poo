
abstract class Animal {
  String nome;

  Animal(this.nome);
  
  void emitirSom();
}

class Cachorro extends Animal {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome : au au");
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: miau");
  }
}

class Passaro extends Animal {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: piu piu");
  }
}

class Vaca extends Animal {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome: muuu");
  }
}
class ListaGenerica<T> {
  List<T> itens = [];

  void adicionar(T item) {
    itens.add(item);
  }

  void imprimirItens() {
    for (var item in itens) {
      print(item);
    }
  }
}
void main() {
  Animal cachorro = Cachorro("Rex");
  Animal gato = Gato("Whiskers");
  Animal passaro = Passaro("Zazu");
  Animal vaca = Vaca("Mimosa");
  
  ListaGenerica<Animal> animais = ListaGenerica<Animal>();
  
  animais.adicionar(cachorro);
  animais.adicionar(gato);
  animais.adicionar(passaro);
  animais.adicionar(vaca);

  print("Sons dos Animais");
  for (var animal in animais.itens) {
    animal.emitirSom();
  }
}
