#Sintaxis basica
puts "Ingresa el primer número:"
numero1 = gets.chomp.to_f

puts "Ingrese el segundo numero:"
numero2 = gets.chomp.to_f

puts "elija la operacion a realizar: suma, resta, division o multiplicacion"
operacion = gets.chomp.downcase

def suma(a, b)
  a+b
end

def resta(a,b)
  a-b
end

def multiplicacion(a,b)
  a*b
end

def division(a,b)
  if b != 0
    a/b
  else
    puts "El numero2 no puede ser cero"
    exit
  end
end

resultado = case operacion
when "suma"
  suma(numero1, numero2)
when "resta"
  resta(numero1, numero2)
when "multiplicacion"
  multiplicacion(numero1, numero2)
when "division"
  division(numero1, numero2)
else
  puts "operacion no valida"
  exit
end

puts "El resultado de #{numero1} #{operacion} a #{numero2} es: #{resultado}"