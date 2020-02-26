require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../player')

class PlayerTest< Minitest::Test

  def setup()
    @player1 = Player.new("Beksinski")
  end

  def test_give_letter
    letter= @player1.give_letter()
    assert_equal("a", letter)
  end


end
