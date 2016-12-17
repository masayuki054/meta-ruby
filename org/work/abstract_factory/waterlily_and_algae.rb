# coding: utf-8

class Algae
  def initialize(name)
    @name = name
  end

  def grow
    puts("藻 #{@name} は成長中です.")
  end
  
end

class WaterLily
  def initialize(name)
    @name = name
  end

  def grow
    puts("睡蓮 #{@name} は成長中です.")
  end
  
end
