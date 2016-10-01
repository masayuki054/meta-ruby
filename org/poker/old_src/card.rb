
require 'constant'

module Poker

  class Card 

    attr_reader :suit, :no

    def initialize(suit, no)
      no = 14 if no==1
      @suit = suit
      @no = no
    end

    def <=> (another)
      return 1 if @no > another.no
      return -1 if @no < another.no
      return 1 if @suit > another.suit
      return -1 if @suit < another.suit
      return 0
    end

    alias :compare :<=>

    def to_s
      (Const::SuitChars[@suit])+(Const::NoChars[@no])
    end


  end
end
