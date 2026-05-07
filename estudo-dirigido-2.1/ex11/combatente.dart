
class Combatente extends Personagem {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca) : super(nome, vida, nivel);


  void atacar(Personagem alvo) {
    if (!estaVivo) {
      print("$_nome está derrotado e não pode atacar!");
      return;
    }
    print("$_nome ataca ${alvo._nome} com força $forca!");

    alvo.receberDano(forca);

    if (!alvo.estaVivo) {
      print("${alvo._nome} foi nocauteado!");
    }
  }
}
