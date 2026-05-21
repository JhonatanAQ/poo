class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}

abstract class Informativo {
  void exibirInformacoes();
}

class LivroDigital extends Livro implements Informativo {
  double tamanhoArquivo;

  LivroDigital(String titulo, String autor, this.tamanhoArquivo) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print("Livro Digital ");
    print("Título: $titulo");
    print("Autor: $autor");
    print("Tamanho do Arquivo: $tamanhoArquivo MB");
  }
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print("Livro Físico");
    print("Título: $titulo");
    print("Autor: $autor");
    print("Páginas: $quantidadePaginas");
  }
}

void main() {
  LivroDigital ebook = LivroDigital("Entendendo Algoritmos", "Aditya Bhargava", 5.5);
  LivroFisico impresso = LivroFisico("O Programador Pragmático", "Andrew Hunt", 352);

  ebook.exibirInformacoes();
  print("");
  impresso.exibirInformacoes();
}
