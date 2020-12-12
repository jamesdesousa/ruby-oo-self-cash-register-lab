require 'pry'
class CashRegister

  attr_accessor :total, :discount, :title, :last
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @@all = []
  end

  def add_item(title, price, quantity= 1)
    @title = title
    @last = (price * quantity)
    @total = @total + (price * quantity)
    quantity.times do
      @@all << title
    end
  end

  def apply_discount
    @total = @total - (@total * (discount / 100.0))
    if discount != 0
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    @total = @total - @last
    @total
  end  





end
