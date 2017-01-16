# -*- coding: utf-8 -*-

# SugarWater: 砂糖水クラス (ConcreteBuilder：ビルダーの実装部分)
class SugarWater
  attr_accessor :water, :sugar
  def initialize(water, sugar)
    @water = water
    @sugar = sugar
  end

  # 素材(ここでは砂糖)を加える
  def add_material(sugar_amount)
    @sugar += sugar_amount
  end
end
