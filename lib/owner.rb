class Owner
  @@all = []
  def initialize
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
