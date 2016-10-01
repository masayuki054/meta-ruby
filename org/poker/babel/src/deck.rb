
# deck.rb
module Poker
  class Deck

    def initialize

      @stock = []
      @used = []

      Const::SuitOrder.each { |suit|
        Const::NoOrder.each { |no|
          @stock.push(Card.new(suit, no))
        }
      }
      @stock.shuffle!

    end

    def draw
      if @stock.size == 0
        @stock = @used
        @used = []
        @stock.shuffle!
      end
      @stock.pop
    end


    def discard(card)
      @used.push(card)
      self
    end


    def size
      @stock.size
    end


    def shuffle!
      @stock.shuffle!
    end

  end
end
