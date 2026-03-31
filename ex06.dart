class Produto {
  int _codigo;
  String _nome;
  double _precoUnitario ;
  int _quantidade;
  double _desconto = 0;

  Produto(this._codigo,this._nome,this._precoUnitario,this._quantidade){
      if(this._codigo <=0){
        throw ("Codigo não pode ser menor ou igual 0.");
      } 
      if(this._nome == ""){
        throw ("Nome não pode ser vazio.");
      } 
      if(this._precoUnitario <= 0){
        throw ("Preco não pode ser menor ou igual 0.");
      }
      if(this._quantidade <= 0){
        throw ("Quantidade não pode ser menor ou igual 0.");
      }
  }
  double calcularDesconto(){
    double precoTotal = _quantidade * _precoUnitario;
    double onePercent = precoTotal / 100;
    
    if(_quantidade >=5 && _quantidade <= 9){
      double resultado = onePercent * 5;
      this._desconto = 5;
      return resultado;
      
    }else if(_quantidade >=10 && _quantidade <= 19){
      double resultado = onePercent * 10;
      this._desconto = 10;
      return resultado;
      
    }else if(_quantidade >=20){
      double resultado = onePercent * 15;
      this._desconto = 15;
      return resultado;
      
    }else{
       double resultado = 0;
       return resultado;
    }
  }
  double calcularTotal(){
    double precoTotal = _quantidade * _precoUnitario;
    double resDesconto = calcularDesconto();
    double res = precoTotal - resDesconto;
    
    return res; 
  }
  void exibirResumo(){
    double resCalcularTotal = calcularTotal();
    double resDesconto = calcularDesconto();
    print("Produto : $_nome  cod:$_codigo");
    print("Preco Unitário R\$$_precoUnitario");
    print("Com $_quantidade unindades terá R\$$resDesconto ($_desconto%) de desconto ");
    print("Preço a pagar e de R\$$resCalcularTotal");
    
  }
  
}
void main(){
  Produto p1 = Produto(2,'Caderno',10,10);
  p1.exibirResumo();
}
