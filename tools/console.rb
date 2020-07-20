require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult = Cult.new("Cult", "New York", "2020")
lucas = Follower.new("Lucas", "21", "Live fast, pry young.")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits