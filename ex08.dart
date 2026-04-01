class Endereco {
  String _rua;
  int _numero;
  String _bairro;
  String _cidade;
  String _estado;
  int _cep;

  Endereco(
    this._rua,
    this._numero,
    this._bairro,
    this._cidade,
    this._estado,
    this._cep,
  )  : assert(_rua.isNotEmpty, 'A rua não pode ser vazia.'),
       assert(_numero > 0, 'O número deve ser maior que 0.'),
       assert(_bairro.isNotEmpty, 'O bairro não pode ser vazio.'),
       assert(_cidade.isNotEmpty, 'A cidade não pode ser vazia.'),
       assert(_estado.isNotEmpty, 'O estado não pode ser vazio.'),
       assert(_cep > 0, 'O CEP não pode ser vazio e deve ser um número positivo.');


  void exibirEndereco() {
    final String cepString = _cep.toString().padLeft(8, '0');
    String formattedCep = '${cepString.substring(0,5)}-${cepString.substring(5, 8)}';

     print('--------------------------');
    print('Rua: $_rua');
    print('Número: $_numero');
    print('Bairro: $_bairro');
    print('Cidade: $_cidade');
    print('Estado: $_estado');
    print('CEP: $formattedCep');
    print('--------------------------');
  }
}

void main() {
  
    Endereco endereco1 = Endereco(
      'Rua das Flores',
      123,
      'Jardim Botânico',
      'Curitiba',
      'PR',
      80060000,
    );
    endereco1.exibirEndereco();

    print('\n'); 


    Endereco endereco2 = Endereco(
      'Avenida Paulista',
      1578,
      'Bela Vista',
      'São Paulo',
      'SP',
      01310200,
    );
    endereco2.exibirEndereco();

    print('\n'); 
  
    Endereco endereco3 = Endereco(
      'Praça da Liberdade',
      50,
      'Funcionários',
      'Belo Horizonte',
      'MG',
      30140010,
    );
    endereco3.exibirEndereco();
  
}
