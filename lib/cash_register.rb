class CashRegister
  
  attr_accessor :discount, :total, :name, :price, :quantity
  
  def initialize(staff_discount = 0)
      @total = 0
      @discount = staff_discount
  end
  
  def total
    @total
  end
  
  def add_item(name, price, quantity = 1)
    @name = name
    @total +=  price * quantity 
  end
    
  def apply_discount
    if discount != 0
      @total = @total * (1-(discount.to_f / 100.00))
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    
  end
end
