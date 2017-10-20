class Owner
  @@all = []
  attr_accessor :name
  attr_accessor :species
  @pets = {:fishes => [], :dogs => [], :cats => []}

  def initialize(name)
    @species = "human"
    @name = name
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
end
