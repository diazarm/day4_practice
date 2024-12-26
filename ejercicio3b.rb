class Menu 
  def initialize (&block)
    @comidas = []
    instance_eval(&block) if block_given?
  end

  def comida(nombre, precio)
    @comidas << {nombre: nombre, precio: precio}
  end

  def mostrar
    @comidas.each do |a|
      puts "la comida es #{a[:nombre]}, y su precio $#{a[:precio]}"
    end
  end 
end


hambre = Menu.new do
  comida("tarta", 12)
  comida("pancho", 5)
  comida("pizza", 9)
end

hambre.mostrar