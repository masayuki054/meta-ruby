
require 'test/unit'
require 'constant'
require 'card'
require 'hand'
require 'player' 

class TestDeck < Test::Unit::TestCase
  include Poker

  def test_player_new
    @p = Player.new("hoge")
    assert_equal("hoge",  @p.name)
    assert_equal(Hand.new, @p.hand)
  end

end
