
class Motor {
  int potencia;
  String tipo;

  Motor(this.potencia, this.tipo) {
    if (potencia <= 0) { throw('A potência do motor deve ser maior que 0. Valor recebido: $potencia');}
    if (tipo.isEmpty){throw('O tipo de motor não pode ser vazio.');}
  }
}

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if (_modelo.isEmpty) {
      throw ('O modelo do carro não pode ser vazio.');
    }
  }

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

    Motor motorEsportivo = Motor(250, 'Gasolina Premium');
    Motor motorEletrico = Motor(180, 'Elétrico');

    Carro carroEsportivo = Carro('Sport GT', motorEsportivo);
    Carro carroUrbano = Carro('Eco EV', motorEletrico);

    carroEsportivo.exibirCarro();
    print('');
    carroUrbano.exibirCarro();
}
