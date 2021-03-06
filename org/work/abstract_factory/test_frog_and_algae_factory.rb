$: << "."

require 'abstract_factory/organism_factory'
require 'abstract_factory/organism_factories/frog_and_algae'

factory = FrogAndAlgaeFactory.new(4,1)
animals = factory.get_animals
animals.each do |animal| 
  animal.eat
end

plants = factory.get_plants
plants.each do |plant|
  plant.grow
end
