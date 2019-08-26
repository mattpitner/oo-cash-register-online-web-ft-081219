class CashRegister 
  attr_accessor :total, :discount, :cart 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @cart = []
  end 
  
  def add_item(title,price, quantity = 1)
    quantity.times do
     @cart << title
   end 
    @total += (price) * quantity 
   
  end 
  
  def apply_discount
    
    if discount == 0 
      "There is no discount to apply."
    else 
   @total = @total * (1-(discount/100.0))
"After the discount, the total comes to $#{@total.to_i}."
  end 
end 

def items 
  @cart
end 

def void_last_transaction
  @total.unshift 
end 

  
  
end 