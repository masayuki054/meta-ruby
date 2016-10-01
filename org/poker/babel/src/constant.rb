# coding: utf-8


module Poker
  
  module Const

    SuitSyms = [:CLUB, :DIAMOND, :HEART, :SPADE] 
    SuitChars = ['C', 'D', 'H', 'S'] 
    SuitOrder = [] # suit の強さ

    # 定数の生成: CLUB， DIAMOND, HEART, SPADE 

    SuitSyms.each_index do |i| 
      SuitOrder << const_set(SuitSyms[i], i)
    end


    NoSyms = [:TWO, :THREE, :FOUR, :FIVE, :SIX, :SEVEN, :EIGHT, :NINE, :TEN,
              :JACK, :QUEEN, :KING, :ACE]
    NoChars = ['2', '3', '4', '5', '6', '7', '8', '9', '0', 'J', 'Q', 'K', 'A']
    NoOrder = []
    NoSyms.each_index do |i| 
      NoOrder << const_set(NoSyms[i], i)
    end

    No_of_Cards = SuitOrder.size*NoOrder.size

    
  end
end
