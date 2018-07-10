class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end

  def cars
  	Car.all.select do |car|
  		car.owner == self
  	end
  end

  def mechanics
  	cars.map do |car|
  		car.mechanics
  	end
  end

  def self.average_amount_of_cars
  	amount_of_cars_array = self.all.map do |carowner|
  		carowner.cars.count
  	end
  	amount_of_cars_array.inject(0) {|sum, x| sum + x} / amount_of_cars_array.size
  end
end
