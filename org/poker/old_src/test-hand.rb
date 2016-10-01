require 'test/unit'
require 'card'
require 'hand'

include Poker

class Test_Hand < Test::Unit::TestCase
  def setup
    @ha = Card.new(Const::HEART, Const::ACE)
    @sa = Card.new(Const::SPADE, Const::ACE)
    @ca = Card.new(Const::CLUB, Const::ACE)
    @sq = Card.new(Const::SPADE, Const::QUEEN)
    @hq = Card.new(Const::HEART, Const::QUEEN)
    @hand = Hand.new
    @hand.putin(@ha)
    @hand.putin(@sa)
    @hand.putin(@ca)
    @hand.putin(@sq)
    @hand.putin(@hq)
  end

  def test_first
    assert_equal(:fullHouse, @hand.judge)
  end
end

    
