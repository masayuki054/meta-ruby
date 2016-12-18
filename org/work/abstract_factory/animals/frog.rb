
require 'abstract_factory/animal'

class Frog < Animal
  def initialize(name)
    @name = name
  end

  def eat
    puts "frog #{@name} は食事中です."
    super
  end
end
