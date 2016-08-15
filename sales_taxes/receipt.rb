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
    puts "Total: $ #{add}"
  end
end

#testing
perfume = Item.new("bottle of perfume", "accessories", 27.99, true)
perfume2 = Item.new("bottle of perfume", "accessories", 18.99, true)
headache = Item.new("packet of headache pills", "med", 9.75, false)
chocolates = Item.new("box of chocolates", "food", 11.25, true)


receipt1 = Receipt.new
receipt1.list_items
receipt1.report
