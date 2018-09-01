=begin
movies = {
  pirates: 5
}

exit = 0

while exit == 0
  puts "Do you want to: add, update, display, or delete?"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "What title would you like to add?"
      title = gets.chomp.to_sym
      if movies[title] != nil
        puts "This is already recorded!"
      else
        puts "What should this be rated?"
        rating = gets.chomp.to_i
        movies[title] = rating
      end

    when "update"
      puts "What title would you like to update?"
      title = gets.chomp.to_sym
      if movies[title] == nil
        puts "This is not already recorded!"
      else
        puts "What should this be rated?"
        rating = gets.chomp.to_i
        movies[title] = rating
      end

    when "display"
      movies.each {|x, y|
        puts "#{x}: #{y}"
      }

    when "delete"
      puts "What title would you like to delete?"
      title = gets.chomp.to_sym
      if movies[title] == nil
        puts "This is not already recorded!"
      else
        puts "Deleting..."
        movies.delete(title)
      end

    else
      puts "Error!"
      exit = 1
  end
end
=end