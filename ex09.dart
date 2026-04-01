
class Endereco {
  String _rua;
  String _numero;
  String _cidade;
  String _estado;
  String? _cep;

  Endereco(
    this._rua,
    this._numero,
    this._cidade,
    this._estado,
    this._cep,
  ) {
    if (_rua.isEmpty) {
      throw ArgumentError('A rua não pode ser vazia.');
    }
    if (_numero.isEmpty) {
      throw ArgumentError('O número não pode ser vazio.');
    }
    if (_cidade.isEmpty) {
      throw ArgumentError('A cidade não pode ser vazia.');
    }
    if (_estado.isEmpty) {
      throw ArgumentError('O estado não pode ser vazio.');
    }
  }

  void exibirEndereco() {
    print('  Rua: $_rua, Nº: $_numero');
    print('  Cidade: $_cidade, Estado: $_estado');
    print('  CEP: $_cep');
  }
}

class Pessoa {
  String _nome;
  int _idade;
  String _cpf;
  Endereco _endereco;

  Pessoa(
   this._nome,
   this._idade,
   this._cpf,
   this._endereco,
  ) {
    if (_nome.isEmpty) {
      throw ArgumentError('O nome não pode ser vazio.');
    }
    if (_idade < 0) {
      throw ArgumentError('A idade deve ser maior ou igual a 0.');
    }
    if (_cpf.isEmpty) {
      throw ArgumentError('O CPF não pode ser vazio.');
    }
  }

  void exibirPessoa() {
    print('Nome: $_nome');
    print('Idade: $_idade anos');
    print('CPF: $_cpf');
    _endereco.exibirEndereco(); 
    print('=====================================');
  }
}

void main() {

    Endereco endereco1 = Endereco(
      'Rua das Flores',
      '123',
      'São Paulo',
      'SP',
      '01000-000',
    );

    Endereco endereco2 = Endereco(
      'Avenida Sete de Setembro',
      '456B',
      'Rio de Janeiro',
      'RJ',
      '20040-000',
    );

    Endereco endereco3 = Endereco(
      'Alameda dos Anjos',
      '789',
      'Belo Horizonte',
      'MG',
      '30130-100',
    );

    Pessoa pessoa1 = Pessoa(
      'Ana Silva',
      30,
      '111.111.111-11',
      endereco1,
    );

    final Pessoa pessoa2 = Pessoa(
      'Bruno Costa',
      25,
      '222.222.222-22',
      endereco2,
    );

    final Pessoa pessoa3 = Pessoa(
      'Carla Dias',
      42,
      '333.333.333-33',
      endereco3,
    );

    pessoa1.exibirPessoa();
    print('\n'); 
    pessoa2.exibirPessoa();
    print('\n');
    pessoa3.exibirPessoa();

}
