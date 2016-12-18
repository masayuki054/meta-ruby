
require 'abstract_factory/plant'
class Algae < Plant
  def initialize(name)
    @name = name
  end

  def grow
    puts("藻 #{@name} は成長中です.")
    super
  end
  
end
