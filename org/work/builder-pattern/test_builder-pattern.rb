# -*- coding: utf-8 -*-
builder = WaterWithMaterialBuilder.new(SugarWater)
director = Director.new(builder)
director.cook

p builder.result
#=> #<SugarWater:0x007fc773085bc8 @water=450, @sugar=125>

builder = WaterWithMaterialBuilder.new(SaltWater)
director = Director.new(builder)
director.cook

p builder.result
#=> #<SaltWater:0x007f92cc103ba8 @water=450, @salt=125>
