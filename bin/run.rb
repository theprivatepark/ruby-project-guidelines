require_relative '../config/environment'
require_relative '../apps/alcohol.rb'
require_relative '../apps/user.rb'
require_relative '../apps/useralcohol.rb'


require 'pry'

def welcome
  puts "Welcome to Alcoholics Not Anonymous!"
  puts "Do you have an account?(Yes/No)"
  user_input = gets.chomp
  if user_input == "Yes"
    puts "Please enter your username."
    username = gets.chomp.downcase
  else
    puts "Please enter your new username."
    username = gets.chomp.downcase
    current_user = User.create(username: username)
    puts "Welcome #{username}!"
  end  
  menu(current_user)
end

def menu(current_user)
  puts "Welcome to the menu #{current_user.username}!"
  puts "1. Add an alcohol to your main list"
  puts "2. View your drink list"
  puts "3. Rename a current drink"
  puts "4. Delete an alcohol"
  puts "5. Exit"
  response = gets.chomp
  case response
  when "1"
    add_alcohol(current_user)
  when "2"
    view_list(current_user)
  when "3"
    rename_drink(current_user)
  when "4"
    delete_drink(current_user)
  when "5"
    exit 
  else 
    puts "Invalid Response"
    menu(current_user)
  end
end

def add_alcohol(current_user)
  #create()
end

def view_list(current_user)
end

def rename_drink(current_user)
end

def delete_drink(current_user)
end
  

welcome
  

# puts 'Select and Alcohol Using Number'

# Alcohol.all.each_with_index {|alc, index|
#  puts "#{index + 1}: #{alc.name}"
# }

# selected_alcohol = gets.chomp.to_i - 1

# puts "You have selected: #{Alcohol.all[selected_alcohol].name}"
# binding.pry
