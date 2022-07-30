
require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :price
    def initialize(disc = 0)
        @total = 0
        @discount = disc
        @items = []
    end
    def add_item(title, price, q = 1)
        q.times do 
            self.items.push(title)
            self.total += price
        end
        @price = price * q
    end
    def apply_discount
        self.total = (self.total * (1 - (self.discount.to_f/100.0))).to_i
        if self.discount == 0
            return "There is no discount to apply."
        else
            return "After the discount, the total comes to $#{total}."
        end
    end
    def void_last_transaction
        self.total -= self.price
    end
end
