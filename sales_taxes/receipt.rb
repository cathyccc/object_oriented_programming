require_relative "item"


#testing
book = Item.new("magazine","book",1,true)
shirt = Item.new("pants","clothing",1,false)
pen = Item.new("pen","stationary",1,true)
medicine = Item.new("medicine","med",1,false)
puts "**************************************"
book.after_tax
shirt.after_tax
pen.after_tax
medicine.after_tax
puts "**************************************"
