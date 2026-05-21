class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);
}

abstract class Ligavel {
  void ligar();
  void desligar();
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(String marca, String modelo, this.sistemaOperacional): super(marca, modelo);

  @override
  void ligar() {
    print("O smartphone $marca $modelo ($sistemaOperacional) está ligando... Iniciando serviços mobile.");
  }

  @override
  void desligar() {
    print("O smartphone $marca $modelo está desligando... Encerrando aplicativos.");
  }
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(String marca, String modelo, this.memoriaRam) : super(marca, modelo);

  @override
  void ligar() {
    print("O notebook $marca $modelo com ${memoriaRam}GB de RAM está ligando... Carregando BIOS.");
  }

  @override
  void desligar() {
    print("O notebook $marca $modelo está desligando... Salvando estado do sistema.");
  }
}

void main() {
  Ligavel smartphone = Smartphone("Apple", "iPhone 15", "iOS");
  Ligavel notebook = Notebook("Dell", "XPS 13", 16);

  smartphone.ligar();
  smartphone.desligar();

  print("-"*40);

  notebook.ligar();
  notebook.desligar();
}
