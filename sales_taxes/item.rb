class Item
  attr_reader :item_name, :price, :import, :type
  attr_accessor :taxed

  @@total = 0
  @@sales_tax_total = 0
  @@grocery_list =[]

  def self.grocery_list
    @@grocery_list
  end

  def self.sales_tax_total
    @@sales_tax_total
  end

  def self.total
    @@total
  end

  def initialize(item_name,type,price,import)
    @item_name = item_name
    @price = price
    @type = type.downcase
    @import = import
    scan
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
    #rounds to nearest 0.05
    round = (item_taxed*20).ceil.to_f/20
    @@sales_tax_total += round - @price
    @@total += round
    return "$ #{"%.2f" % round}"
  end

  def scan
    if @import == true
      @@grocery_list << "1 imported #{@item_name}: #{after_tax}"
    else
      @@grocery_list << "1 #{@item_name}: #{after_tax}"
    end
  end

end
