class CashRegister
attr_accessor :discount, :total, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @last_transaction = price

    while quantity > 0
      @items << item
      quantity -= 1
  end
end

  def apply_discount
    if @discount != 0
      @total -= @total * @discount/ 100
      return  "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
  @items
end

def void_last_transaction
  @total -= @last_transaction
end
end
