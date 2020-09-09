class UserAlcohol

    attr_reader :user_id, :drink_id
    attr_writer :rating

    @@all = []

    def initialize(user_id, drink_id, rating=nil)
        @user_id = user_id
        @drink_id = drink_id
        @rating = rating
        @@all << self
    end

    def self.all 
    @@all
    end

end