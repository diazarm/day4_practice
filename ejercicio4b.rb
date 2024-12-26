def suma(numero1, numero2)
  numero1 + numero2
end

def resta(numero1, numero2)
  numero1 - numero2
end

def multiplicacion(numero1, numero2)
  numero1 * numero2
end

def division(numero1, numero2)
  if numero2 != 0
    numero1 / numero2
  else
    puts "No se puede dividir por cero. Intenta nuevamente."
    nil # Retorna nil para indicar un error
  end
end

# Menú principal
loop do
  puts "\nMenú de Operaciones:"
  puts "1. Suma"
  puts "2. Resta"
  puts "3. Multiplicación"
  puts "4. División"
  puts "5. Salir"
  print "Elige una opción: "
  opcion = gets.chomp.to_i

  case opcion
  when 1, 2, 3, 4
    # Solicitar números
    print "Ingresa el primer número: "
    numero1 = gets.chomp.to_f
    print "Ingresa el segundo número: "
    numero2 = gets.chomp.to_f

    # Realizar la operación seleccionada
    resultado = case opcion
                when 1
                  suma(numero1, numero2)
                when 2
                  resta(numero1, numero2)
                when 3
                  multiplicacion(numero1, numero2)
                when 4
                  division(numero1, numero2)
                end

    # Mostrar el resultado si no hubo error (resultado != nil)
    puts "El resultado es: #{resultado}" unless resultado.nil?
  when 5
    puts "Gracias por usar el programa. ¡Hasta luego!"
    break # Salir del bucle
  else
    puts "Opción no válida. Por favor, elige una opción del menú."
  end
end
