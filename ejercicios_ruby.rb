def es_par?(numero)
  numero.even? ? "Es par" : "Es impar"
end

puts es_par?(4)
puts es_par?(7)


numeros = [1, 2, 3, 4, 5]
numeros.each do |num|
  puts "Número: #{num}"
end

palabras = ["abeja", "titere", "hormiga"]
palabras.each do |a|
  puts "el animal #{a}"
end

def factorial(n)
  return 1 if n <= 1
  n * factorial(n - 1)
end

puts factorial(5)
