require 'pry'

def welcome

  puts "Welcome! Do you have an account?(Yes/No)"
  user_input = STDIN.gets.chomp
  if user_input == "Yes"
    puts "Please enter your username."
    username = STDIN.gets.chomp
  elsif 
    username == "No"
    puts "Please enter your new username."
    username = STDIN.gets.chomp
    puts "Welcome #{username}!"
  else 
    puts "Invalid Entry."
    welcome
  end  

end

def menu
  # puts 
  # "1. View/Edit wishlist
  #  2. View/Edit current drink list
  #  3. View/Edit favorites"

   puts 'Select and Alcohol Using Number'

   Alcohol.all.each_with_index {|alc, index|
    puts "#{index + 1}: #{alc.name}"
  }

  selected_alcohol = STDIN.gets.chomp.to_i - 1

  puts "You have selected: #{Alcohol.all[selected_alcohol].name}"
end
  

welcome
menu
  