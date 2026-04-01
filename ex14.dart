class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia,this.tipo);
}

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo,this._motor);

  void exibirMotor() {
    print('  Potência do Motor: ${_motor.potencia} HP');
    print('  Tipo de Motor: ${_motor.tipo}');
  }

  void exibirCarro() {
    print('Modelo do Carro: $_modelo');
    print('Detalhes do Motor:');
    exibirMotor(); 
  }
}

void main() {

  Motor motorEsportivo = Motor(250,'Gasolina Premium');
  Motor motorEletrico = Motor(180,'Elétrico');
  
  Carro carroEsportivo = Carro('Sport GT',motorEsportivo);
  Carro carroUrbano = Carro('Eco EV', motorEletrico);

  carroEsportivo.exibirCarro();
  print("\n");
  carroUrbano.exibirCarro();
}
