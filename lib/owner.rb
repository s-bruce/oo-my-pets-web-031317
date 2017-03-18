class Owner

	attr_accessor :pets, :name
	attr_reader :species

	@@all = []
  
	def initialize(name)
		@name = name
		@species = "human"
		@pets = {fishes: [], cats: [], dogs: []}
		@@all << self
	end

	def self.all
		@@all
	end

	def self.reset_all
		@@all.clear
	end

	def self.count
		@@all.count
	end

	def say_species
		"I am a #{species}."
	end

	def buy_fish(name)
		pets[:fishes] << Fish.new(name)
	end

	def buy_cat(name)
		pets[:cats] << Cat.new(name)
	end

	def buy_dog(name)
		pets[:dogs] << Dog.new(name)
	end

	def walk_dogs
		pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end

	def play_with_cats
		pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def feed_fish
		pets[:fishes].each do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		pets.each do |pet_species, pet_list|
			pet_list.each do |pet|
				pet.mood = "nervous"
			end
			pet_list.clear
		end
	end

	def list_pets
		fish_count = pets[:fishes].count
		dog_count = pets[:dogs].count
		cat_count = pets[:cats].count
		"I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
	end

end