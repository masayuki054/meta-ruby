# -*- coding: utf-8 -*-

# 加工水クラス (Builder)
class WaterWithMaterialBuilder
  def initialize(class_name)
    @water_with_material = class_name.new(0,0)
  end

  # 素材を入れる
  def add_material(material_amount)
    @water_with_material.add_material(material_amount)
  end

  # 水を加える
  def add_water(water_amount)
    @water_with_material.water += water_amount
  end

  # 加工水の状態を返す
  def result
    @water_with_material
  end
end
