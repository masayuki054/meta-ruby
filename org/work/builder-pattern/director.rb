# -*- coding: utf-8 -*-

# Director: 加工水の作成過程を取り決める
class Director
  def initialize(builder)
    @builder = builder
  end
  def cook
    @builder.add_water(150)
    @builder.add_material(90)
    @builder.add_water(300)
    @builder.add_material(35)
  end
end
