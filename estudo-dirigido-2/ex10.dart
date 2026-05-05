class Dispositivo {
  String _marca;
  String _modelo;
  Dispositivo(this._marca,this._modelo);
  void ligar(){
    print("Dispositivo $_marca-$_modelo :  ligado");
  }
}
class Smartphone extends Dispositivo {
  String _sistemaOperacional;
  Smartphone(String marca,String modelo,this._sistemaOperacional) : super(marca,modelo);
  
  @override
  void ligar() {
   super.ligar();
   print('Sistema Operacional : $_sistemaOperacional');
  }
}
void main() {
  Dispositivo pedido = Dispositivo("Apple","IPhone");
  Smartphone smartphone = Smartphone("Apple","IPhone","IOS");
  
  pedido.ligar();
  print('_'*40);
  smartphone.ligar();

}