class Livro {
  String _titulo;
  String _autor;
  Livro(this._titulo,this._autor);
  
  
  void exibirInformacoes(){
    print("$_titulo ( $_autor )");
  }
}
class LivroDigital extends Livro {
  String _tamanhoArquivo;
  LivroDigital(String titulo, String autor,this._tamanhoArquivo) : super(titulo,autor);
  
  @override
  void exibirInformacoes() {
   super.exibirInformacoes();
   print('Tamanho do arquivo:$_tamanhoArquivo');
  }
}
void main() {
  Livro livro = Livro("Arquitetura limpa","Robert C. Martin");
  LivroDigital livroDigital = LivroDigital("Arquitetura limpa","Robert C. Martin","6.65 MB");
  
  livro.exibirInformacoes();
  livroDigital.exibirInformacoes();

}
