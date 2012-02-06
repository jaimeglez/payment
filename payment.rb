class Client
  attr_accessor :fname, :lname, :address, :address2, :city
 
  def initialize(fname, lname, address, address2, city)
    @fname = fname
    @lname = lname
    @address = address
    @address2 = address2
    @city = city
  end

  def buy(product,cc)
    puts product.name
    puts cc.name
  end

end

class Product
  attr_accessor :name, :cost
 
  def initialize(name, cost)
    @name = name
    @cost = cost
  end

end

class Cc
  attr_accessor :name,:number, :clv, :expdate
 
  def initialize(name,number, clv, expdate)
    @name = name
    @number = number
    @clv = clv
    @expdate = expdate
  end
end

# Clients
sace = Client.new("sace", "glez","sadas","sadasd","colima")
chicho = Client.new("chicho", "guillen","sadas","sadasd","colima")
lalo = Client.new("lalo", "ruiz","sadas","sadasd","colima")
marco = Client.new("marco", "gallardo","sadas","sadasd","colima")

#Cc
cc1= Cc.new("santander",3333,12345,2012)
cc2= Cc.new("hsbc",5364569,12345,2012)
cc3= Cc.new("banamex",39063,12345,2012)
cc4= Cc.new("bancomer",379672,12345,2012)

# Products
pen = Product.new("pen",12);
book = Product.new("book",20);
paper = Product.new("paper",15);
eraser = Product.new("eraser",12);

creditcard = {
  sace => cc1,
  chicho => cc2,
  lalo => cc3,
  marco => cc4
}

sace.buy(pen,creditcard[sace])
chicho.buy(book, creditcard[chicho])
lalo.buy(paper, creditcard[lalo])
marco.buy(eraser, creditcard[marco])
