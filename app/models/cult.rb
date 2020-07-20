class Cult
attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age=18)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age

        @@all << self
    end

    def self.all
        @@all
    end

    def find_by_name
        self.all.select{|cult| cult.name == name}
    end

    def find_by_location
        self.all.select{|cult| cult.location == location}
    end

    def find_by_founding_year
        self.all.select{|cult| cult.founding_year == founding_year}
    end
end