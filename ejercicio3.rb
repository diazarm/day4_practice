#Ejercicio con DSL

class Menu
  def initialize(&block)
    instance_eval(&block) if block_given?
  end

  def comida(nombre, precio:)
    puts "Comida: #{nombre}, Precio: $#{precio}"
  end
end

# Usar el DSL
Menu.new do
  comida "Pizza", precio: 12
  comida "Ensalada", precio: 8
end


#Aqui lo mismo pero guardando los datos en un arreglo

class Menu
  def initialize(&block)
    @comidas = []
    instance_eval(&block) if block_given?
  end

  def comida(nombre, precio:)
    @comidas << { nombre: nombre, precio: precio }
  end

  def mostrar
    @comidas.each do |comida|
      puts "Comida: #{comida[:nombre]}, Precio: $#{comida[:precio]}"
    end
  end
end

# Usar el DSL
menu = Menu.new do
  comida "Pizza", precio: 12
  comida "Ensalada", precio: 8
  comida "Sopa", precio: 6
end

# Mostrar el menú
menu.mostrar


#Extender el DSL 

class Menu
  def initialize(&block)
    @comidas = []
    instance_eval(&block) if block_given?
  end

  def comida(nombre, precio:, categoria: "General")
    @comidas << { nombre: nombre, precio: precio, categoria: categoria }
  end

  def mostrar
    @comidas.each do |comida|
      puts "[#{comida[:categoria]}] Comida: #{comida[:nombre]}, Precio: $#{comida[:precio]}"
    end
  end
end

# Usar el DSL
menu = Menu.new do
  comida "Pizza", precio: 12, categoria: "Principal"
  comida "Ensalada", precio: 8, categoria: "Entrante"
  comida "Helado", precio: 5, categoria: "Postre"
end

# Mostrar el menú
menu.mostrar


# Tareas para Practicar
# Agrega un método para calcular el precio total del menú.

# Por ejemplo: menu.total debe devolver la suma de los precios.
# Permite filtrar las comidas por categoría.

# Por ejemplo: menu.filtrar_por_categoria("Entrante") debe mostrar solo las entradas.
# Ordena las comidas por precio.

# Por ejemplo: menu.ordenar_por_precio debe mostrar las comidas del más barato al más caro.

