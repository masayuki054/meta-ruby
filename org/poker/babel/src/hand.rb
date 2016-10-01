
require 'card'

module Poker

  class Hand

    PokerHands = [
      :highCard, :onePair, :twoPairs, 
      :threeCards, :straight, :flush, :fullHouse, :fourCards, :straightFlush
    ]

    attr_reader :hand

    def initialize
      @hand = []
    end

    def putin(card)
      @hand.push(card).sort!
    end
    
    def rank
      PokerHands.index(judge)
    end
    
    def judge
      s = straight?
      f = flush?
      return :straightFlush if s && f 
      return :straight if s 
      return :flush if f 
      return calc_pairs
    end

    def calc_pairs
      p = 0
      @hand.each { |a|
        @hand.each { |b|
          p = p+1 if a.no == b.no
        }
      }
      case p 
      when 5 then :highCard 
      when 7 then :onePair 
      when 9 then :twoPairs
      when 11 then :threeCards
      when 13 then :fullHouse 
      when 17 then :fourCards 
      end
    end

    def straight?
      false
    end

    def flush?
      false
    end
    
  end
end
