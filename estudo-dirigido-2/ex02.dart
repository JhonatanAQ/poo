class Produto {
  String _nome;
  double _preco;
  Produto(this._nome,this._preco);
  
  void exibirDados(){
     print('Nome: $_nome  Preço: R\$ $_preco');
  }
}
class  ProdutoPerecivel extends Produto {
  String dataValidade;
  ProdutoPerecivel(String nome, double preco, this.dataValidade):super(nome,preco);
  
  @override
  void exibirDados() {
   super.exibirDados();
   print('Validade: $dataValidade');
  }
}
void main() {
   Produto produto = Produto("feijão",11.5);
  produto.exibirDados();
  print("-"*40);
  ProdutoPerecivel perecivel = ProdutoPerecivel("iogurte",25.99,"12/05/2026");
  perecivel.exibirDados();
}