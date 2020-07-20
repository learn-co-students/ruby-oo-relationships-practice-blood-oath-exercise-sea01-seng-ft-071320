require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

science = Cult.new("Science", "Seattle", 1802, "Test Everything")
flatiron = Cult.new("Flatiron", "New York", 2015, "Break Everything")
smartwater = Cult.new("Smart Water", "Miami", 2015, "All the water")

scot = Follower.new("Scot", 36, "Just keep swimming")
nathan = Follower.new("Nathan", 27, "You can do anything for 10 seconds")

# BloodOath.class(initiation_date, follower, cult)

fi_bo = BloodOath.new("2020-12-05", nathan, flatiron)
fi_bo2 = BloodOath.new("2030-12-05", scot, flatiron)

binding.pry
puts "Mwahahaha!" # just in case pry is buggy and exits