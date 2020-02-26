

class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name= name
    @lives = 6
  end

  def give_letter()
    letter= gets.chomp().downcase()
    while letter.length >1
      p "Please give only one letter at a time."
      letter= gets.chomp().downcase()
    end
    return letter
  end


end
