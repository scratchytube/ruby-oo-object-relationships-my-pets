require 'pry'
class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats 
    Cat.all.find_all {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.find_all {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    Dog.all.each { |dog| dog.mood = "happy"}
  end

  def feed_cats
    Cat.all.each { |cat| cat.mood = "happy"}
  end

  def sell_pets
    Dog.all.map { |dog| dog.mood = "nervous"}
    Cat.all.map { |cat| cat.mood = "nervous"}
    Dog.all.map { |dog| dog.owner = nil}
    Cat.all.map { |cat| cat.owner = nil}
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
 
end