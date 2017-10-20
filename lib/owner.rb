class Owner
  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    count = @@all.size
    @@all.clear
    count
  end
end
