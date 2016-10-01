
require 'test/unit'
require 'constant'
require 'card'

class Test_Card < Test::Unit::TestCase
  include Poker
  
  def setup
    @sa = Card.new(Const::SPADE, Const::ACE)
    @sk = Card.new(Const::SPADE, Const::KING)
  end

  def test_card_new
    assert_equal(Card, @sa.class)
    assert_equal(Const::SPADE, @sa.suit)
    assert_equal(Const::ACE, @sa.no)
  end

  def test_card_compare
    assert_equal(1, @sa.compare(@sk))
    assert_equal(0, @sa.compare(@sa))
    assert_equal(-1, @sk.compare(@sa))
  end

  def test_card_to_s
    assert_equal('SK', @sk.to_s)
    assert_equal('SA', @sa.to_s)
  end

end
