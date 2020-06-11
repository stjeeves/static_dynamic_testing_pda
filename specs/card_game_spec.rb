require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ("../card_game");
require_relative ("../card")

class TestCardGame < MiniTest::Test

  def setup

    @card1 = Card.new("Spades", 1)
    @card2 = Card.new("Hearts", 4)
    @card3 = Card.new("Clubs", 7)

    @game1 = CardGame.new()

  end


  def test_check_for_ace
    assert_equal(true, @game1.check_for_ace(@card1))
  end

  def test_check_for_no_ace
    assert_equal(false, @game1.check_for_ace(@card2))
  end

  def test_highest_card
    assert_equal(@card2, @game1.highest_card(@card1, @card2))
  end

  def test_cards_total
    @cards = [@card2, @card3]
    assert_equal("You have a total of 11", @game1.cards_total(@cards))
  end

end
