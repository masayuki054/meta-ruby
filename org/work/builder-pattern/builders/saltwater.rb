# -*- coding: utf-8 -*-

# SaltWater: 塩水クラス (ConcreteBuilder：ビルダーの実装部分)
class SaltWater
  attr_accessor :water, :salt
  def initialize(water, salt)
    @water = water
    @salt = salt
  end

  # 素材(ここでは塩)を加える
  def add_material(salt_amount)
    @salt += salt_amount
  end
end
