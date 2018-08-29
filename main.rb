
@grocery_list = Hash.new(0)

def addItem(item)
    @grocery_list[item.to_sym] += 1
end

addItem("bread")
addItem("bread")
addItem("eggs")
addItem("milk")

@grocery_list.each {|key, value|
    puts "#{key} => #{value}"
}
