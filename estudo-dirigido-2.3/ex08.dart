 abstract class Informativo {
  void exibirInformacoes();
}

class Livro {
  String titulo;
  String autor;

  Livro(this.titulo, this.autor);
}
class ListaGenerica<T> {
  final List<T> itens = [];

  void adicionar(T item) {
    itens.add(item);
  }

  void imprimirItens() {
    for (var item in itens) {
      print(item);
    }
  }

  List<T> obtenerItens() {
    return itens;
  }
}
class LivroDigital extends Livro implements Informativo {
  int tamanhoArquivoMB;

  LivroDigital(String titulo, String autor, this.tamanhoArquivoMB) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Digital: $titulo autor: $autor ($tamanhoArquivoMB MB)');
  }

  @override
  String toString() {
    return 'Livro Digital título: $titulo autor: $autor | Tamanho: $tamanhoArquivoMB MB';
  }
}

class LivroFisico extends Livro implements Informativo {
  int quantidadePaginas;

  LivroFisico(String titulo, String autor, this.quantidadePaginas) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Físico: $titulo autor: $autor ($quantidadePaginas págs)');
  }

  @override
  String toString() {
    return 'Livro Físico título: $titulo autor: $autor páginas: $quantidadePaginas';
  }
}

class Audiobook extends Livro implements Informativo {
  int duracaoMinutos;

  Audiobook(String titulo, String autor, this.duracaoMinutos) : super(titulo, autor);

  @override
  void exibirInformacoes() {
    print('Audiobook: $titulo autor: $autor ($duracaoMinutos min)');
  }

  @override
  String toString() {
    return 'Audiobook título: $titulo autor: $autor duração: $duracaoMinutos min';
  }
}

void main() {
  var biblioteca = ListaGenerica<Informativo>();

  biblioteca.adicionar(LivroFisico('Clean Code', 'Robert Martin', 425));
  biblioteca.adicionar(LivroDigital('Dart Básico', 'Mariana Souza', 12));
  biblioteca.adicionar(Audiobook('POO na Prática', 'Carlos Lima', 180));
  biblioteca.adicionar(LivroFisico('Algoritmos Modernos', 'Ana Torres', 350));
  biblioteca.adicionar(LivroDigital('Flutter Essencial', 'Pedro Alves', 25));

  print('Livros em Catálogo');
  biblioteca.imprimirItens();

  print('\nDetalhes Informativos');
  for (var livro in biblioteca.obtenerItens()) {
    livro.exibirInformacoes();
  }
}