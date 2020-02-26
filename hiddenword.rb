require_relative("player")

class Hiddenword

  attr_accessor :obscured_word

  def initialize(word)
    @word = word.chars()
    @obscured_word= []
    for char in @word
      if char != " "
        @obscured_word.push("*")
      elsif char == " "
        @obscured_word.push(" ")
      end
    end
  end

  def determine_if_correct_letter_given(letter)
    indices= []
    index= 0
    if @word.any?{|hidden_char| hidden_char== letter}
      for hidden_char in @word
        if hidden_char==letter
          indices.push(index)
          index+=1
        else
          index+=1
        end
      end
      for revealed_index in indices
        @obscured_word[revealed_index]= letter
      end
      return true
    end
    return false
  end

end
