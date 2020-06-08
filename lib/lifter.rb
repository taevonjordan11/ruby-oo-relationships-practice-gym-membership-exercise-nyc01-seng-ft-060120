class Lifter
  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
      @@all
  end

  def all_memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gym_memberships
    all_memberships.map do |member|
      member.gym
    end
  end

  def self.lift_total
    total = self.all.map do |lifters|
      lifters.lift_total
    end
    p "The lift total is #{total.sum}"
  end

  def total_membership_costs
    all_mem = all_memberships.map do |total|
      total.cost
    end
    p "Your total membership costs are $#{all_mem.sum}"
  end

  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

end
