from clases.tipo_usuario import Tipo_Usuario

class Usuario(Tipo_Usuario):
    def __init__(self, id_usuario, nombre_usuario, correo_usuario, telefono_usuario, rut_usuario, id_tipo_usuario):
        super().__init__(id_tipo_usuario)
        self.id_usuario = id_usuario
        self.nombre_usuario = nombre_usuario
        self.correo_usuario = correo_usuario
        self.telefono_usuario = telefono_usuario
        self.rut_usuario = rut_usuario