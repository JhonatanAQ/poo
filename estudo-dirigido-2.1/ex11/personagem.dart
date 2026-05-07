include "combatente.dart";

class Personagem{
  String _nome;
  int _vida;
  int _nivel;
  Personagem(this._nome,this._vida,this._nivel){
    if (_nome.isEmpty){
      print("Nome invalido");
    }
    if (_vida < 0) {
      _vida = 0;
    }
    if (_nivel < 1) {
      _nivel = 0;
    }
  }
  
  bool get estaVivo => _vida > 0;
  
  void receberDano(int quantidade) {
    int dano = _vida - quantidade;

    if (dano > 0) {
      _vida -= quantidade;
      print("$_nome recebeu $quantidade de dano! Vida restante: $_vida");
      print("$_nome ainda está na luta!");
    } else {
      print("$_nome foi derrotado...");
      _vida = 0;
    }
  }
  void status(){
    print("Nome: $_nome | Vida: $_vida | Nível: $_nivel");
  }
}