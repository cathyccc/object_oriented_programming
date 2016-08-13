require_relative "item"

#testing
book = Item.new("magazine","book",1,false)
shirt = Item.new("pants","clothing",1,false)
cake = Item.new("birthday cake","food",1,true)
pen = Item.new("pen","stationary",1,true)

book.purchase
shirt.purchase
cake.purchase
pen.purchase
