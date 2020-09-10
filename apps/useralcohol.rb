class Useralcohol < ActiveRecord::Base
 belongs_to :alcohol
 belongs_to :user
end