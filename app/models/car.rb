class Car

  attr_reader :make, :model, :owner

  @@all = []

  def initialize(make, model, classification, owner)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all << self
  end

  def self.all
  	@@all
  end

  def self.classfications
  	self.all.map do |car|
  		car.classfication
  	end
  end

  def mechanics
  	Mechanic.all.select do |mechanic|
  		mechanic.specialty == self.classification
  	end
  end

end
