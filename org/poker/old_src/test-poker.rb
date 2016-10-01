require 'test/unit'
require 'card'
require 'hand'
require 'poker'

include Poker

class Test_Poker < Test::Unit::TestCase
  def setup
    @poker = Poker.new(["a", "b", "c", "d", "e"])
  end

  def test_first
    assert_equal(:fullHouse, @poker.play)
  end
end

    
