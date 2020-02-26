require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../hiddenword')
require_relative("../player")


class HiddenwordTest< Minitest::Test

  def setup()
    @hiddenword1 = Hiddenword.new("poland rules")
    @player1= Player.new("Daniel")
  end

  def test_obscure_word()
    assert_equal("****** *****", @hiddenword1.obscured_word.join())
  end

  def test_player_giving_letter_o()
    #letter= @player1.give_letter()
    letter = "o"
    partial_revealed_word= @hiddenword1.determine_if_correct_letter_given(letter)
    assert_equal("*o**** *****", partial_revealed_word)
  end

end
