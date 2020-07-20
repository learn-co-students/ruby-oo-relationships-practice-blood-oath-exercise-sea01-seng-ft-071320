class BloodOath
  attr_reader :cult, :follower, :initiation_date

  @@all = []

  def initialize(initiation_date, cult, follower)
    @initiation_date, @cult, @follower = initiation_date, cult, follower

    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    self.all[0].follower
  end
end