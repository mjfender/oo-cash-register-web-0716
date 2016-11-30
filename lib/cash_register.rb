class CashRegister
  attr_reader :discount, :items
  attr_accessor :total
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title, price, quantity=1)
    @title = title
      quantity.times do
        @items << @title
      end
    @price = price
    @total += (price*quantity)
  end
  def void_last_transaction
    @total -= @price
  end 
  def apply_discount
    if discount > 0
      @total = (@total - (@total*@discount/100))
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
end