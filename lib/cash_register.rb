class CashRegister
  
  attr_accessor :discount, :total, :name, :price, :quantity, :items_array
  
  def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items_array = []
  end
  
  def total
    @total
  end
  
  def add_item(name, price, quantity = 1)
    @name = name
    @price = price
    @total +=  price * quantity 
    quantity.times{items_array << name}
 
  end
    
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total = @total * (1-(discount.to_f / 100.00))
      "After the discount, the total comes to $#{total.to_i}."
    end
  end
  
  def items
    @items_array
  end
  
  def void_last_transaction
    @total -= @price
  end
  
end
