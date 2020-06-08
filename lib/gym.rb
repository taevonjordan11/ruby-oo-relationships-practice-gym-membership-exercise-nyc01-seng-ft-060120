class Gym
  @@all =[]
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def all_memberships
    Membership.all.select do |i|
      i.gym == self
    end
  end

  def lifter_memberships
    all_memberships.map do |i|
      i.lifter
    end
  end

  def lifter_names
    lifter_memberships.map do |i|
      i.name
    end
  end

  def gym_total_lift
    total = lifter_memberships.map do |i|
      i.lift_total
    end
    p "The total lift amount for this gym is #{total.sum} pounds!"
  end

  def self.all
    @@all
  end


end
