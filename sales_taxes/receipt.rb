require_relative "item"

class Receipt
  def add
  end

  def report
    puts "Sales Tax: $ #{ Item.sales_tax_total }"
  end
end

#testing
book = Item.new("magazine","book",1,true)
shirt = Item.new("shirt","clothing",10,false)
pen = Item.new("pen","stationary",1,true)
medicine = Item.new("medicine","med",1,false)
book.scan
shirt.scan
