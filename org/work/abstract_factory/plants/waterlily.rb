require 'abstract_factory/plant'

class WaterLily < Plant
  def initialize(name)
    @name = name
  end

  def grow
    puts("睡蓮 #{@name} は成長中です.")
  end
  
end
