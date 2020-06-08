# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

taevon = Lifter.new("Taevon", 900)
guy = Lifter.new("GUY", 100)
planet_fitness = Gym.new("Planet Fitness")
crunch = Gym.new("Crunch Fitness")

binding.pry

puts "Gains!"
