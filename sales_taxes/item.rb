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

    # if @import == true
    #   puts "1 imported #{@item_name} at #{"%.2f" % @price}"
    # else
    #   puts "1 #{@item_name} at #{"%.2f" % @price}"
    # end
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
    @@sales_tax_total += item_taxed - @price
    "$ #{"%.2f" % item_taxed.round(2)}"

  end

  def scan
    if @import == true
      #@@grocery_list << "1 imported #{@item_name}: #{after_tax}"
      puts "1 imported #{@item_name}: #{after_tax}"
    else
      #@@grocery_list << "1 #{@item_name}: #{after_tax}"
      puts "1 #{@item_name}: #{after_tax}"
    end
  end


end
