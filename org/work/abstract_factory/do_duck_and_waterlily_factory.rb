$: << "."

require 'abstract_factory/organism_factory'
require 'abstract_factory/organism_factories/duck_and_waterlily'
require 'abstract_factory/animals/duck'
require 'abstract_factory/plants/waterlily'

factory = DuckAndWaterLilyFactory.new(4,1)
animals = factory.get_animals
animals.each do |animal| 
  animal.eat
end

plants = factory.get_plants
plants.each do |plant|
  plant.grow
end
