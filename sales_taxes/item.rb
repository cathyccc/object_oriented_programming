class Item
  attr_reader :item_name, :price, :import
  attr_accessor :type

  @bfm = false
  @@sales_tax_total = 0

  def initialize(item_name,type,price,import)
    @item_name = item_name
    @price = price
    @type = type.downcase
    @import = import
  end

  def purchase
    if @import == true
      puts "1 imported #{@item_name} at #{"%.2f" % @price}"
    else
      puts "1 #{@item_name} at #{"%.2f" % @price}"
    end
  end

  def after_tax
    if @type == "book" || @type == "food" || @type == "med" || @type == "medicine" || @type == "medical" || @type == "books"
      @bfm = true
    else
      @bfm = false
    end

    if @bfm == true && @import == false
      item_taxed = @price
      puts "$ #{"%.2f"% item_taxed}"
    elsif @bfm == false && @import == false
      item_taxed = @price * 1.10
      puts "$ #{"%.2f"% item_taxed}"
    elsif @bfm == true && @import == true
      item_taxed = @price * 1.05
      puts "$ #{"%.2f"% item_taxed}"
    elsif @bfm == false && @import == true
      item_taxed = @price * 1.15
      puts "$ #{"%.2f"% item_taxed}"
    end

    @@sales_tax_total += item_taxed - @price
  end
end
