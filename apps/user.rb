class User < ActiveRecord::Base 

  attr_reader :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end




end