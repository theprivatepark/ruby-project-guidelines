require_relative '../config/environment'
require_relative '../apps/alcohol.rb'
require_relative '../apps/user.rb'
require_relative '../apps/useralcohol.rb'


def welcome 
puts "Please input your username."
user_input = gets.chomp
puts "#{user_input}, welcome to Alcoholics Not Anonymous!"
end

def current_list?
  puts "Do you want to see your current drink list? (Yes/No)" 
  user_input = gets.chomp
  if user_input == "Yes" 
    puts "FUCKING LIST"
  else
    puts "FUCK YOU TOO"
  end
end

def favorites_list
  puts "Do you want to see your favorites list? (Yes/No)"
  user_input = gets.chomp
  if user_input == "Yes"
    puts "HERE'S YOUR FUCKING FAV LIST"
  else
    puts "FUCK YOU AGAIN"
  end
end

def wish_list
  puts "Do you want to see your wish list? (Yes/No)"
  user_input = gets.chomp
  if user_input == "Yes"
    puts "HERE'S YOUR WISH LIST BITCH"
  else
    puts "FUCK U 2"
  end
end

welcome
current_list?
favorites_list
wish_list


# binding.pry
