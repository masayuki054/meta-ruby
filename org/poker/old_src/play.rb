require 'card.rb'
require 'deck.rb'
require 'hand.rb'
require 'player.rb'

module Poker
  
names = ["foo", "bar", "hoge", "nanasi", "gombei"]

players = names.map { |n| Player.new(n) }

deck = Deck.new

5.times do 
    players.each { |p|
      p.hand.putin(deck.draw)
    }
end

players.each { |p|

  p p.hand.judge

}


end

