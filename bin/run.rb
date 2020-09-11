require_relative '../config/environment'
require_relative '../apps/alcohol.rb'
require_relative '../apps/user.rb'
require_relative '../apps/useralcohol.rb'


require 'pry'

def welcome
  puts ""
  puts ""
  puts "Welcome to Alcoholics Not Anonymous!"
  puts ""
  puts "Do you have an account?(Yes/No)"
  puts ""
  user_input = gets.chomp.downcase
  if user_input == "Yes".downcase
    existing_user
  else
    puts "Please enter your new username."
    username = gets.chomp.downcase
    current_user = User.create(username: username)
    puts "Welcome #{username.capitalize}!"
  end  
  menu(current_user)
end

def menu(current_user)
  puts ""
  puts "Here's the menu, #{current_user.username.capitalize}!"
  puts ""
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
    menu(current_user)
  when "3"
    rename_drink(current_user)
  when "4"
    delete_drink(current_user)
  when "5"
    puts "Thanks for drinking, Good Bye"
    exit
  else 
    puts "Invalid Response"
    menu(current_user)
  end
end

def existing_user
  puts ""
  puts "Please enter your username."
  response = gets.chomp.downcase
  current_user = User.find_by(username: response)
  if current_user == nil
    puts "No username found"
    existing_user
  else 
    menu(current_user)
  end
end

def add_alcohol(current_user)
  puts "Enter alcohol name"
  response1 = gets.chomp.downcase
  puts "Enter alcohol type"
  response2 = gets.chomp.downcase
  puts "Enter alcohol percentage"
  response3 = gets.chomp
  alc_instance = Alcohol.create(name: response1, alcohol_percentage: response3.to_i)
  current_user.useralcohols << Useralcohol.create(alcohol: alc_instance)
  view_list(current_user)
  menu(current_user)
end


def view_list(current_user)
  current_user = User.find_by(username: current_user.username)
  puts ""
  puts ""
  current_user.alcohols.each {|alcohol| puts "#{alcohol.name.capitalize}"}
  puts "\nHere are your drinks!\n\n"
end

def rename_drink(current_user)
  puts "Rename alcohol"
  view_list(current_user)
  puts "What drink do you want rename?"
  puts ""
  response = gets.chomp.downcase
  puts ""
  alcohol_instance = current_user.alcohols.find {|alcohol| alcohol.name == response}
  puts "What is your new alcohol name?"
  response = gets.chomp.downcase
  alcohol_instance.update(name: response)
  menu(current_user)
end

def delete_drink(current_user)
  puts "Delete alcohol"
  view_list(current_user)
  puts "What drink do you want to delete?"
  puts ""
  response = gets.chomp.downcase
  puts ""
  alcohol_instance = current_user.alcohols.find {|alcohol| alcohol.name == response}
  alcohol_instance.destroy
  current_user = User.find_by(username: current_user.username)
  view_list(current_user)
  puts ""
  puts "Your alcohol has been deleted"
  puts ""
  menu(current_user)
end
  

welcome
  

# puts 'Select and Alcohol Using Number'

# Alcohol.all.each_with_index {|alc, index|
#  puts "#{index + 1}: #{alc.name}"
# }

# selected_alcohol = gets.chomp.to_i - 1

# puts "You have selected: #{Alcohol.all[selected_alcohol].name}"
# binding.pry
