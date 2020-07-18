class CashRegister
    attr_accessor :total, :discount, :last_transaction


    def initialize (discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def total
        @total
    end

    # def add_item(title, price, quantity = 1)
    #     @total += price*quantity
    #     @last_transaction = price*quantity
    #     quantity.times do 
    #         @items.push(title)
    #     end
    # end

    def apply_discount
        if @discount != 0
            @total -= @total*@discount/100
            return "After the discount, the total comes to $#{@total}."
            else
            return "There is no discount to apply."
            end
    end

    def items
        @items
    end

    def void_last_transaction
        last_item = @items.pop()
        @total -= @last_transaction
    end

end