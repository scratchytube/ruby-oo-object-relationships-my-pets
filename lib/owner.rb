require 'pry'

class Owner

  attr_reader :name, :species
  

  @@all = [ ]

  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{self.species}."
  end

  # .count returns the number of owners that have been created 

  def self.count
    @@all.count 
  end

  # .reset_all can reset the owners that have been created
  def self.reset_all
    @@all.clear
  end

  # returnsa a collection of all the cats that belong to the owner
  def cats
    Cat.all.select { |cat| cat.owner == self}
  end

  # returnsa a collection of all the dogs that belong to the owner
  def dogs
    Dog.all.select { |dog| dog.owner == self}
  end

    # can buy a cat that is an instance of the Cat class
    # knows about its cats
  def buy_cat(name)
    Cat.new(name, self)
  end

  # can buy a dog that is an instance of the Dog class
  # knows about its dogs

  def buy_dog(name)
    Dog.new(name, self)
  end

  # walks the dogs which makes the dogs' moods happy

  def walk_dogs
    Dog.all.select { |dog| dog.mood = "happy"}
  end

  # feeds cats which makes the cats' moods happy
  def feed_cats
    Cat.all.select { |cat| cat.mood = "happy" }
  end

  # can sell all its pets, which makes them nervous
  # can sell all its pets, which leaves them without an owner
  def sell_pets
    Dog.all.map { |dog| dog.mood = "nervous" }
    Cat.all.map { |cat| cat.mood = "nervous" }
    Dog.all.map { |dog| dog.owner = nil }
    Cat.all.map { |cat| cat.owner = nil }
  end

  # can list off its pets
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end






end

# binding.pry

