
require 'abstract_factory/animal'

class Duck < Animal
  def initialize(name)
    @name = name
  end

  def eat
    puts "duck #{@name} は食事中です."
    super
  end
end
