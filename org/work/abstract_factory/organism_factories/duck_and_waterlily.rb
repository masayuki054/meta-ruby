require 'abstract_factory/organism_factory'
require 'abstract_factory/animals/frog.rb'
require 'abstract_factory/plants/algae.rb'

class DuckAndWaterLilyFactory < OrganismFactory
  private

  def new_animal(name)
    Duck.new(name)
  end

  def new_plant(name)
    WaterLily.new(name)
  end
end
