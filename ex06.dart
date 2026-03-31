class Produto {
  int codigo;
  String nome;
  double precoUnitario ;
  int quantidade;
  double _desconto = 0;

  Produto(this.codigo,this.nome,this.precoUnitario,this.quantidade){
      if(this.codigo <=0){
        throw ("Codigo não pode ser menor ou igual 0.");
      } 
      if(this.nome == ""){
        throw ("Nome não pode ser vazio.");
      } 
      if(this.precoUnitario <= 0){
        throw ("Preco não pode ser menor ou igual 0.");
      }
      if(this.quantidade <= 0){
        throw ("Quantidade não pode ser menor ou igual 0.");
      }
  }
  double calcularDesconto(){
    if(quantidade >=5 && quantidade <= 9){
      double precoTotal = quantidade * precoUnitario;
      double resultado = (precoTotal / 100) * 5;
      this._desconto = 5;
      return resultado;
      
    }else if(quantidade >=10 && quantidade <= 19){
      double precoTotal = quantidade * precoUnitario;
      double resultado = (precoTotal / 100) * 10;
      this._desconto = 10;
      return resultado;
      
    }else if(quantidade >=20){
      double precoTotal = quantidade * precoUnitario;
      double resultado = (precoTotal / 100) * 15;
      this._desconto = 15;
      return resultado;
      
    }else{
       double resultado = 0;
       return resultado;
    }
  }
  double calcularTotal(){
    double precoTotal = quantidade * precoUnitario;
    double resDesconto = calcularDesconto();
    double res = precoTotal - resDesconto;
    
    return res;
  }
  void exibirResumo(){
    double resCalcularTotal = calcularTotal();
    double resDesconto = calcularDesconto();
    print("Produto : $nome  cod:$codigo");
    print("Preco Unitário R\$$precoUnitario");
    print("Com $quantidade unindades terá $resDesconto ($_desconto%) de desconto ");
    print("Preço a pagar e de R\$$resCalcularTotal");
    
  }
  
}

void main() {
  Produto p1 = Produto(6,"caderno",10,9);
  p1.exibirResumo();
  
}
