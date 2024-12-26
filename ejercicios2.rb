# sintaxis basica
variables = "esto es ruby"
# puts variables

suma = 2 + 2
nombre_completo = "Hola " + "Mundo"
# puts nombre_completo

# clases 
class Perro
  def ladrar
    puts "Guau guau!"
  end
end

boby = Perro.new
# boby.ladrar

# Definir atributos y métodos:

class Gato < Perro
  attr_accessor :nombre

  def saludar
    puts "Hola, soy #{nombre}."
  end
end

gato = Gato.new
gato.nombre = "Luna"

puts "el gato #{gato.saludar} tambien #{gato.ladrar} " #no funciona, primero imprime los metodos y por ultimo el string


# Metodos
def saludar(nombre)
puts "Hola, #{nombre}!"
end

saludar("Mundo")


#bloques

3.times { puts "Me encanta Ruby!" }
# imprime 3 veces "Me encanta Ruby"



#Arrelgos

frutas = ["manzana", "banana", "cereza"]
frutas.each { |fruta| puts fruta }

#el each me genera un puts de cada elemento del arreglo usando fruta como un pivot.

#Hashes (diccionarios u objetos, pero todo es un objeto)

persona = { nombre: "Ana", edad: 30 }
puts persona[:nombre]

puts "la persona tiene #{persona[:edad]} años"
puts persona[:edad] + 3 

#condicionales 

edad = 18

if edad >= 18
  puts "Eres mayor de edad."
else
  puts "Eres menor de edad."
end

# Bucles

5.times do |i|
  puts "Esto es la iteración #{i}"
end

#la iteracion es por 5 veces, que corresponde a 5.times e inicia desde 0, utiliza el i como iterador.

# Módulos: Los módulos se utilizan para agrupar métodos reutilizables: a diferencia de la herencia, que una clase hija puede hacerlo de su padre, un modulo puede incluir varios modulos 
module Volador
  def volar
    puts "Estoy volando!"
  end
end

# mixins es cuando puedes aplicar los modulos a las clases, mediante include y extends
module HabilidadesDeVuelo
  def volar
    "Puedo volar 🚀"
  end
end

module HabilidadesDeNado
  def nadar
    "Puedo nadar 🏊‍♂️"
  end
end

class Pato
  include HabilidadesDeVuelo
  include HabilidadesDeNado
end

pato = Pato.new
puts pato.volar # Salida: Puedo volar 🚀
puts pato.nadar # Salida: Puedo nadar 🏊‍♂️


# el include es para los objetos de la clase y los extends es para la clase propiamente dicha

#Manejo de Errores

begin
  resultado = 10 / 0
rescue ZeroDivisionError
  puts "No se puede dividir por cero."
end


begin
  numero = 10
  resultado = numero / 0
rescue ZeroDivisionError
  puts "Error: No se puede dividir por cero."
rescue StandardError => e
  puts "Se produjo un error: #{e.message}"
else
  puts "La operación se realizó exitosamente."
ensure
  puts "Este bloque se ejecuta siempre."
end


#Configuracion simple estilo DSL

class Configuracion
  def initialize(&block)
    instance_eval(&block)
  end

  def establecer(clave, valor)
    puts "#{clave} = #{valor}"
  end
end

Configuracion.new do
  establecer :nombre, "Mi Aplicación"
  establecer :version, "1.0.0"
end


#Manipulacion de Hashes  ej. Acceso clave, valor

config = { nombre: "Ruby", version: "3.0" }
config.each { |clave, valor| puts "#{clave}: #{valor}" }

