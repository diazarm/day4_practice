=begin Ejercicio 1: Superhéroes y habilidades
Crea un módulo llamado Habilidades con métodos relacionados con superpoderes (volar, correr_rapido, ser_fuerte). Luego:

Incluye el módulo en dos clases diferentes (Superman y Flash).
Asegúrate de que cada superhéroe pueda usar los métodos del módulo.
Objetivo: Practicar include para agregar métodos de instancia a clases.
=end

module Habilidades
  def volar
    puts "estoy volando"
  end
  def correr_rapido
    puts "corro como el viento"
  end
  def ser_fuerte
    puts "mas rapido que flash"
  end
end

class Superman
  include Habilidades   
end

p = Superman.new
p.ser_fuerte
p.volar



# Ejercicio 2: Configuración de una aplicación
# Crea un módulo llamado Configuracion con un método de clase llamado info_sistema, que devuelve un mensaje indicando el nombre del sistema y la versión.

# Usa extend para que el método sea accesible directamente desde la clase.
# Implementa este módulo en dos clases (AppWeb y AppMovil), y haz que cada una pueda mostrar su configuración.
# Objetivo: Practicar extend para agregar métodos de clase.

module Configuracion
  def info_sistema
    puts "Sistema OS ver. 1.5"
  end
end

class AppWeb
  extend Configuracion
end

class AppMovil
  def initialize(nombre)
    @nombre = nombre
  end
  extend Configuracion
  include Habilidades
  def saludo
    puts "Hola soy #{@nombre} y estoy #"
  end
end

AppMovil.info_sistema
mac = AppMovil.new("maco")

mac.volar

mac.saludo