class Personagem {
  String _nome;
  int _vida; 
  int _ataque;

  Personagem(this._nome,this._vida,this._ataque) {
    if (_nome.isEmpty) {
      throw('O nome do personagem não pode ser vazio.');
    }
    if (_vida <= 0) {
      throw('A vida do personagem deve ser maior que 0.');
    }
    if (_ataque <= 0) {
      throw('O ataque do personagem deve ser maior que 0.');
    }
  }


  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print('$_nome está derrotado');
      return;
    }
    if (!inimigo.estaVivo()) {
      print('$_nome  ataca ${inimigo._nome}, mas ${inimigo._nome} já está derrotado.');
      return;
    }

    print('$_nome ataca ${inimigo._nome} que sofre $_ataque de dano');
    inimigo._vida -= _ataque;


    if (inimigo._vida < 0) {
      inimigo._vida = 0;
    }

    print('${inimigo._nome} agora tem ${inimigo._vida} de vida.');
    if (!inimigo.estaVivo()) {
      print('${inimigo._nome} foi derrotado');
    }
  }


  void exibirStatus() {
    print('Status de $_nome');
    print('Vida: $_vida');
    print('Ataque: $_ataque');
    print('Está Vivo: ${estaVivo() ? 'Sim' : 'Não'}');
    print('\n');
  }


  bool estaVivo() {
    return _vida > 0;
  }
}

void main() {
  Personagem heroi;
  Personagem monstro;

  heroi = Personagem('mago',90,  20);
  monstro = Personagem('goblin',100,18);
 
  print('Início da Batalha');
  heroi.exibirStatus();
  monstro.exibirStatus();
  print('\n');

  int turno = 1;
  while (heroi.estaVivo() && monstro.estaVivo()) {
    print('\nTurno $turno ');

    if (heroi.estaVivo()) {
      heroi.atacar(monstro);
      if (!monstro.estaVivo()) {
        break; 
      }
    }

  
    if (monstro.estaVivo()) {
      monstro.atacar(heroi);
      if (!heroi.estaVivo()) {
        break; 
      }
    }

    turno++;
    heroi.exibirStatus();
    monstro.exibirStatus();
  }

  print('\nFim da Batalha');
  if (heroi.estaVivo()) {
    print('${heroi._nome} VENCEU a batalha');
  } else if (monstro.estaVivo()) {
    print('${monstro._nome} VENCEU a batalha');
  } else {
    print('Empate!'); 
  }
}
