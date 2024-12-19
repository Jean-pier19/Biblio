from clases.autor import Autor

class Libro(Autor):
    def __init__(self, isbn, titulo, id_autor):
        super().__init__(id_autor)
        self.isbn = isbn
        self.titulo = titulo