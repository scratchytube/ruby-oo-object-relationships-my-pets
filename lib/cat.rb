require 'pry'

class Cat

  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = [ ]

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

  


end
  













































































# require 'pry'
# class Cat

#   attr_reader :name
#   attr_accessor :owner, :mood

#   @@all = []

#   def initialize(name, owner=nil, mood="nervous")
#     @name = name
#     @owner = owner
#     @mood = mood
#     @@all << self
#   end

#   def self.all
#     @@all
#   end
 

# end