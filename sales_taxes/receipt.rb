require_relative "item"

class Receipt
  def add
    return "#{"%.2f" % Item.total}"
  end

  def list_items
    Item.grocery_list.each do |purchases|
      puts purchases
    end
  end

  def report
    puts "Sales Tax: $ #{ "%.2f" % Item.sales_tax_total }"
    puts "Total: #{add}"
  end
end

#testing
book = Item.new("book","book",12.49,false)
cd = Item.new("music cd","entertainment",14.99,false)
chocolate = Item.new("chocolate bar","food",0.85,false)

receipt1 = Receipt.new
receipt1.list_items
receipt1.report
