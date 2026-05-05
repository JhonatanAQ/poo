class Animal {
  String _nome;
  String _som;
  Animal(this._nome,this._som);
  
  String get som => _som;
  set som(String valor) => _som = valor;
  
  void emitirSom(){
    print("$_nome : $_som");
  }
}
class Cao extends Animal {
  Cao(String nome) : super(nome,"AU,AU,AU,AU,AU");
}
class Gato extends Animal {
  Gato(String nome) : super(nome,"MIAU,MIAU,MIAU,MIAU");
}
class Passaro extends Animal {
  Passaro(String nome) : super(nome,"PIU,PIU,PIU,PIU");
}
void main() {
  Animal animal = Animal("Atum","........");
  Cao cao = Cao("Labrador Retriever");
  Gato gato = Gato("british shorthair");
  Passaro passaro = Passaro("Arara azul");
  
  animal.emitirSom();
  cao.emitirSom();
  gato.emitirSom();
  passaro.emitirSom();
}
