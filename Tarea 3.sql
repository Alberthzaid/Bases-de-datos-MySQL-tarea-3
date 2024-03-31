CREATE DATABASE Books;

USE Books;

CREATE TABLE Autor (
    AutorCod INT NOT NULL,
    AutorNombre VARCHAR(80),
    PRIMARY KEY (AutorCod)
);

CREATE TABLE Libro (
    LibroId INT NOT NULL,
    LibroTitulo VARCHAR(80),
    LibroISBN VARCHAR(10),
    LibroNumPag INT,
    PRIMARY KEY (LibroId)
);

CREATE TABLE AutorLibro (
    AutorLibroId INT NOT NULL,
    LibroId INT NOT NULL,
    AutorCod INT NOT NULL,
    PRIMARY KEY (AutorLibroId),
    FOREIGN KEY (LibroId) REFERENCES Libro(LibroId),
    FOREIGN KEY (AutorCod) REFERENCES Autor(AutorCod)
);


INSERT INTO Autor (AutorNombre) VALUES ('Gabriel Garcia Marquez');
INSERT INTO Autor (AutorNombre) VALUES ('J.K. Rowling');
INSERT INTO Autor (AutorNombre) VALUES ('Stephen King');

INSERT INTO Libro (LibroTitulo, LibroISBN, LibroNumPag) VALUES ('Cien años de soledad', '9780307474728', 432);
INSERT INTO Libro (LibroTitulo, LibroISBN, LibroNumPag) VALUES ('Harry Potter and the Philosopher''s Stone', '0747532699', 223);
INSERT INTO Libro (LibroTitulo, LibroISBN, LibroNumPag) VALUES ('The Shining', '9780345806789', 447);


INSERT INTO AutorLibro (LibroId, AutorCod) VALUES (1, 1);
INSERT INTO AutorLibro (LibroId, AutorCod) VALUES (2, 2);
INSERT INTO AutorLibro (LibroId, AutorCod) VALUES (3, 3);
