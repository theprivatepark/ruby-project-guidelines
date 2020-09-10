require_relative 'useralcohol.rb'

class Alcohol < ActiveRecord::Base

  has_many :useralcohols
  has_many :users, through: :useralcohols
    
end