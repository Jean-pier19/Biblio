CREATE TABLE autor (
    id_autor INT not null,
    nombre_autor VARCHAR2(30),
    seudonimo_autor VARCHAR2(50),
    fecha_nac DATE,
    fecha_def DATE,
    biografia_autor VARCHAR2(300),
    PRIMARY KEY (id_autor)
);

CREATE TABLE biblioteca (
    id_biblioteca INT NOT NULL,
    nombre_biblioteca VARCHAR2(50),
    direccion_biblioteca VARCHAR2(100),
    telefono_biblioteca INT,
    PRIMARY KEY (id_biblioteca)
);

CREATE TABLE categoria (
    id_tipo_categoria INT NOT NULL,
    tipo_categoria VARCHAR2(50),
    PRIMARY key (id_categoria)
);

CREATE TABLE libro (
    id_autor INT NOT NULL,
    isbs INT NOT NULL,
    titulo VARCHAR2(100),
    PRIMARY key (isbs),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

CREATE TABLE tipo_libro (
    id_tipo_categoria INT NOT NULL,
    id_categoria_libro INT NOT NULL,
    categoria_libro VARCHAR2(50),
    PRIMARY KEY id_categoria_libro,
    FOREIGN KEY (id_tipo_categoria) REFERENCES categoria(id_tipo_categoria)
);

CREATE TABLE tipo_usuario (
    id_tipo_usuario INT NOT NULL,
    tipo_usuario VARCHAR2(50),
    descripcion VARCHAR2(200),
    PRIMARY key (id_tipo_usuario)
);

CREATE TABLE usuario (
    id_tipo_usuario INT NOT NULL,
    id_usuario INT NOT NULL,
    nombre VARCHAR2(50),
    correo VARCHAR2(70),
    telefono INT,
    rut VARCHAR2(50),
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario)
);