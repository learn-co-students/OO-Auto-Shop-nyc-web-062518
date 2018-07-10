class Mechanic

  attr_reader :name, :specialty

  @@all = []

	def initialize(name, specialty)
	  @name = name
	  @specialty = specialty
	  @@all << self
	end

	def self.all
		@@all
	end

	def cars
		Cars.all.select do |car|
			car.classification == self.specialty
		end
	end

	def car_owners
		cars.map do |car|
			car.owner
		end
	end
end
