

class Libro {

 String isbn;
  String titulo;
  int? numeroPaginas;
  String? descripcion;


  Libro(this.isbn,this.titulo,int numeroPaginas, String descripcion){
    this.numeroPaginas=numeroPaginas;
    this.descripcion=descripcion;
  }

  imprimir(){
    return "isbn: $isbn , titulo: $titulo, numero de Paginas: $numeroPaginas, descripción: $descripcion \n";
  }
}

void main() {
 
  Libro libro1 = Libro(
    '978-3-16-148410-0',
    'El título del libro',
     250,
     'Una descripción breve del libro.',
  );

  Libro libro2 = Libro(
    '978-1-4028-9462-6',
    'Otro libro interesante',1,""
    );


  print(libro1.imprimir());
  print(libro2.imprimir());
}
