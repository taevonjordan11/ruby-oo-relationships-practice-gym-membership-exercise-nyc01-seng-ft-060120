class Membership
  @@all = []

  attr_reader :cost, :gym
  attr_accessor :lifter

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end
end
