class Item
  attr_reader :item_name, :price, :import, :type

  @@sales_tax_total = 0

  def self.sales_tax_total
    @@sales_tax_total
  end

  def initialize(item_name,type,price,import)
    @item_name = item_name
    @price = price
    @type = type.downcase
    @import = import

    if @import == true
      puts "1 imported #{@item_name} at #{"%.2f" % @price}"
    else
      puts "1 #{@item_name} at #{"%.2f" % @price}"
    end
  end

  # checks if it is an exempted good
  def check_bfm
    case @type
    when "book","books","food","medical","med","medicine"
      bfm = true
    else
      bfm = false
    end
  end

  # defines price after tax
  def after_tax
    case check_bfm
    when true
      # exempted and imported goods
      if @import == true
        item_taxed = @price * 1.05

      # exempted and domestic goods
      else
        item_taxed = @price
      end

    when false
      # taxable and imported goods
      if @import == true
        item_taxed = @price * 1.15

      # taxable and domestic goods
      else
        item_taxed = @price * 1.10
      end
    end

    puts "$ #{"%.2f" % item_taxed.round(2)}"
    @@sales_tax_total += item_taxed - @price

  end

end
