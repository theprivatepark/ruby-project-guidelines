class User < ActiveRecord::Base 

has_many :useralcohols
has_many :alcohols, through: :useralcohols

end