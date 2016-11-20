Nodo = Struct.new(:value, :next, :prev){
  attr_accessor :prev
}

class Lista
  attr_reader  :head, :tail

  def initialize()
    @head = nil
    @tail = nil
  end
  def to_s
    out = "#{@head}"
    out
  end
  def insertar(a)
    @nodo = Nodo.new(a,@head)
    if (@head != nil) then
      @head.next = @nodo
      @nodo.prev = @head
      @head = @nodo
    else
      #puts "hola"
      @nodo.next = nil
      @nodo.prev = nil
      @head = @nodo
      @tail = @head
    end
  end
  def extraer
    out = @head.value
    @head = @head.prev
    if (out != nil)
      out
    else
      puts "Lista vacia"
    end
  end
end