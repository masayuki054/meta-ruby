require 'card'
require 'deck'
require 'hand'
require 'player'

module Poker

  class Poker

    def initialize (names = ["foo", "bar", "hoge", "nanasi", "gombei"])
      @players = names.map { |n| Player.new(n) }      
    end

    def play
      deck = Deck.new
      5.times do 
        @players.each do |p|
          p.hand.putin(deck.draw)
        end
      end

      @players.each do |p|
        print p.name, ": "
        print p.hand.hand
      end

      @players.each do |p|
        p p.hand.judge
      end
    end
  end
end
