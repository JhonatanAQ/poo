class Produto {
  String _nome;
  double _preco; 
  int _estoque;
  
  Produto(this._nome, this._preco, this._estoque);
  
  void repor(int qtd){
    _estoque = _estoque + qtd;
    print("Reposição realizada:${qtd} ${_nome}");
    print("e no estoque tem apenas: ${_estoque} unidade \n");
  }
  void vender(int qtd){
    if(qtd >_estoque){
      print("No estoque tem apenas : ${_estoque}");
      return;
    }else{
      print("Compra realizada:${qtd} ${_nome}.");
      _estoque = _estoque - qtd;
      exibirFicha();
    }
  }
  void exibirFicha(){
    print("${_nome} por ${_preco} R\$ a unidade. ");
    print("e no estoque tem apenas: ${_estoque} unidade \n");
  }
}

void main() {
  Produto p1 = Produto("Caneta",2.6,100);
  p1.vender(8);
  p1.vender(12);
  p1.repor(30);
}
