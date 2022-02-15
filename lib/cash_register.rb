require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
        self.last_transaction = price * quantity
        quantity.times { self.items << title }  
    end

    def apply_discount
        if self.discount != 0
            discount_amount = self.total * (self.discount.to_f / 100)
            self.total -= discount_amount.to_i

            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        #self.total - item.last's price
        #<= how do I get access to last item's price?
        self.total -= self.last_transaction

        
    end

end