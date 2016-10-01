
require 'test/unit'
require 'constant'
require 'card'
require 'deck'

class TestDeck < Test::Unit::TestCase
  include Poker

  def test_deck_new
    @d = Deck.new
    assert_equal(Const::No_of_Cards, @d.size)
  end

  def test_deck_draw
    @d = Deck.new
    size = @d.size
    c = @d.draw
    assert_equal(Card, c.class)
    assert_equal(1, size-@d.size)
  end

  def test_deck_discard
    @d = Deck.new
    (2*Const::No_of_Cards).times do |i|
      c = @d.draw
      assert_equal(Card, c.class)
      @d.discard(c)
    end
    assert_equal(0, @d.size)
  end
end
