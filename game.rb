require_relative("player")
require_relative("hiddenword")

class Game

  attr_reader :name

  def initialize(name)
    @name= name
    @guessed_letters= []
  end

  def create_hidden_word()
    hidden_word= gets.chomp().downcase()
    system "clear"
    @hiddenword1= Hiddenword.new(hidden_word)
    @player1 = Player.new("David")
  end


  #
  # def take_letter(player, hiddenword)
  #   letter = player.give_letter()
  # end

  def evaluate_players_letter()
    letter= @player1.give_letter()
    if @hiddenword1.determine_if_correct_letter_given(letter)
      p @hiddenword1.obscured_word
      @guessed_letters.push(letter)
    else
      @player1.lives-=1
      p "Please try again"
      p @guessed_letters
      p @hiddenword1.obscured_word
    end
  end

  def is_won?()
    return @hiddenword1.obscured_word.any?{|hidden_char| hidden_char=="*"}? true : false
  end

  def is_lost?()
    return @player1.lives>0? true : false
  end

end
