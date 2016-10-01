
require 'test/unit'
require 'constant'

class Test_Constant < Test::Unit::TestCase
  include Poker

  def test_constant_suit
    assert_equal(Const::SuitSyms.index(:CLUB), Const::CLUB)
    assert_equal(Const::SuitSyms.index(:DIAMOND), Const::DIAMOND)
    assert_equal(Const::SuitSyms.index(:HEART), Const::HEART)
    assert_equal(Const::SuitSyms.index(:SPADE), Const::SPADE)
    assert_equal(Const::SuitOrder[0], Const::CLUB)
    assert_equal(Const::SuitOrder[1], Const::DIAMOND)
    assert_equal(Const::SuitOrder[2], Const::HEART)
    assert_equal(Const::SuitOrder[3], Const::SPADE)
  end

  def test_constant_no
    assert_equal(Const::NoOrder, [  
                   Const::TWO, Const::THREE, Const::FOUR, Const::FIVE,
                   Const::SIX, Const::SEVEN, Const::EIGHT, Const::NINE,
                   Const::TEN, Const::JACK, Const::QUEEN, Const::KING,
                   Const::ACE])
  end

  def test_constant_card
    assert_equal(52, Const::No_of_Cards)
  end

end
