class Alcohol < ActiveRecord::Base

  attr_reader :name, :type, :alcohol_percentage

  @@all = []

  def initialize(name, type, alcohol_percentage)
    @name = name
    @type = type
    @alcohol_percentage = alcohol_percentage
    @@all << self
  end

  def self.all 
    @@all
  end
    
end