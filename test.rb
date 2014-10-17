class Item

  @@myvar = "fruit"

  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end

  def show
    puts @item_name
    puts @quantity
  end
  def another
    @ano = "hello"
  end
  def show_another
    puts @ano
  end
  def func
    puts @myvar
  end
end

item = Item.new("my item", 5)
#item.show
#item.another
#item.show_another
#item.func
puts Item.myvar
