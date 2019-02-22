class Owner
  attr_accessor :pets, :mood
  attr_reader :species, :name

  @@all=[]

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def initialize(species)
    @species=species
    @pets = {:fishes=> [], :dogs=> [], :cats=>[]}
    @@all << self
  end

  def say_species
    return "I am a #{species}."
  end

  def name=(name)
    @name=name
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats]<< Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dogs|
      dogs.mood="happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood="happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood="happy"
    end
  end

  def sell_pets
    pets.each do |species,pets|
      pets.each do |pet|
        pet.mood="nervous"
      end
    pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
