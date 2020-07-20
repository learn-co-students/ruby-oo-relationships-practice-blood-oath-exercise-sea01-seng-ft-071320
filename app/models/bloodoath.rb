class BloodOath
    attr_accessor :follower, :cult, :initiation_date

    @@all = []
    def initialize(initiation_date, follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult 

        @@all << self 
    end

    def self.all
        @@all
    end


    def first_oath
        binding.pry
        signup_date = BloodOath.all.map {|oath| oath.initiation_date}
        signup_date.sort
        signup_date[0]
      end
end