class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets["fishes"] << Fish.new(name)
  end
end
