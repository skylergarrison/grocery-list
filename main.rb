class Groc_List
  attr_reader :username, :password
  
  def initialize(username, password)
    @username = username
    @password = password
    @grocery_list = Hash.new(0)
  end

  public
  def addItem(item)
      @grocery_list[item.intern] += 1
  end

  def enumerate
    @grocery_list.each {|key, value|
      puts "#{key} => #{value}"
    }
  end

end

list = Groc_List.new("skyler","dog")

puts list.username
puts list.password

list.addItem("bread")
list.addItem("bread")
list.addItem("eggs")
list.addItem("milk")

list.enumerate