class Item
  attr_accessor :price, :item_name, :import, :type,

  def initialize(item_name,type,price,import)
    @item_name = item_name
    @price = price
    @type = type.downcase
    @import = import
    @bfm = false
  end

  def purchase
    puts "Item: #{@item_name}  Price: #{@price}  Type: #{@type}  Import: #{@import}"
  end

  def after_tax
    if @type == "book" || @type == "food" || @type == "med" || @type == "medicine" || @type == "medical" || @type == "books"
      @bfm = true
    else
      @bfm = false
    end

    if @bfm == true && @import == false
      item_taxed = @price.round(2)
      puts "$ #{item_taxed}"
    elsif @bfm == false && @import == false
      item_taxed = (@price *= 1.10).round(2)
      puts "$ #{item_taxed}"
    elsif @bfm == true && @import == true
      item_taxed =(@price *= 1.05).round(2)
      puts "$ #{item_taxed}"
    elsif @bfm == false && @import == true
      item_taxed = (@price *= 1.15).round(2)
      puts "$ #{item_taxed}"
    end
  end
end


#testing
book = Item.new("magazine","book",1,false)
shirt = Item.new("pants","clothing",1,false)
cake = Item.new("birthday cake","food",1,true)
pen = Item.new("pen","stationary",1,true)

book.after_tax
shirt.after_tax
cake.after_tax
pen.after_tax
