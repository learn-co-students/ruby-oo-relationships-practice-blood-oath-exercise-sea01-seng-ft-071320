class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto

        @@all << self 
    end 

    def self.all
        @@all
    end

    def of_a_certain_age
        # binding.pry
        Follower.all.select {|follower| follower.age > age }
    end

binding.pry
end