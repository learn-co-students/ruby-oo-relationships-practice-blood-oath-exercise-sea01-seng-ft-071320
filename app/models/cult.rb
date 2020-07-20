class Cult
  attr_reader :name, :location, :founding_year
  attr_accessor :slogan, :minimum_age

  @@all = []

  def initialize(name, location, founding_year)
    @name, @location, @founding_year = name, location, founding_year

    @minimum_age = 18

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find { |cult| cult.name == name }
  end

  def self.find_by_location(location)
    self.all.select { |cult| cult.location == location }
  end

  def self.find_by_founding_year(founding_year)
    self.all.select { |cult| cult.founding_year.to_i == founding_year }
  end

  def recruit_follower(initiation_date, follower)
    if follower.age < self.minimum_age
      puts "This follower is too young to recruit!"
    else
      BloodOath.new(initiation_date, self, follower)
    end
  end

  def bloodoaths
    BloodOath.all.select { |bloodoath| bloodoath.cult == self }
  end

  def followers
    bloodoaths.map { |bloodoath| bloodoath.follower }
  end

  def cult_population
    followers.length
  end

  # Bonus analytics
  def ages
    followers.map { |follower| follower.age.to_i }
  end

  def self.locations
    self.all.map { |cult| cult.location }
  end
  
  def average_age
    ages.sum.to_f / ages.length.to_f
  end

  def my_followers_mottos
    followers.each { |follower| puts follower.life_motto }
  end

  def self.least_popular
    Cult.all.min_by { |cult| cult.followers.length }
  end

  def self.most_common_location
    self.locations.max_by { |location| Cult.find_by_location(location).length }
  end
end