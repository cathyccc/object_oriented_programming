class item
  attr_accessor :price, :item_name, :imported, :type

  def initiatize(item_name,price,type)
    @item_name = item_name
    @price = price
    @type = type
    @import = false
  end
end
