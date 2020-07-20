class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name, @age, @life_motto = name, age, life_motto

    @@all << self
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    self.all.select { |follower| follower.age.to_i == age }
  end

  def join_cult(initiation_date, cult)
    if self.age < cult.minimum_age
      puts "You are too young to join this cult!"
    else
      BloodOath.new(initiation_date, cult, self)
    end
  end

  def bloodoaths
    BloodOath.all.select { |bloodoath| bloodoath.follower == self }
  end

  def cults
    bloodoaths.map { |bloodoath| bloodoath.cult }
  end

  #Bonus Analytics
  def my_cults_slogans
    cults.map { |cult| cult.slogan }
  end

  def self.ranked
    self.all.sort { |a, b| b.cults.length <=> a.cults.length }
  end

  def self.most_active
    self.ranked[0]
  end

  def self.top_ten
    self.ranked[0..9]
  end

  #Bonus paywall
  def fellow_cult_followers
    Follower.all.select do |follower|
      follower != self && follower.cults.select do |cult|
        self.cults.include?(cult)
      end.length > 0
    end
  end


end