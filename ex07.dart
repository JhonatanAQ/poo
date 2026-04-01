
class Contador {
  int _valor = 0;

  void incrementar() {
    _valor++;
    print('Contador: $_valor');
  }

  void decrementar() {
    if (_valor > 0) {
      _valor--;
      print('Contador: $_valor');
    } else {
      print('Não é possível decrementar, o valor já é 0.');
    }
  }

  void zerar() {
    _valor = 0;
    print('Contador: $_valor');
  }
  void exibirValor() {
    print('Contador: $_valor');
  }
}

void main() {
  Contador contador1 = Contador();
  
  contador1.exibirValor(); 
  contador1.incrementar(); 
  contador1.incrementar();  
  contador1.exibirValor();  
  contador1.decrementar();  
  contador1.exibirValor();  
  contador1.zerar();        
  contador1.exibirValor();  
  contador1.decrementar();  
  contador1.exibirValor(); 

 
}
