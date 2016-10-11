


class Computer
attr_reader :colors,
            :generated_colors,
            :correct_guesses
            :response

  def initialize
    @colors = ["R", "Y", "B", "G"]
    @generated_colors = []
    @response = []

  end

  def randomize_colors
    4.times{generated_colors << colors.sample}
    generated_colors
  end


  def convert_the_guess(guess)
    randomize_colors_beginner
    response = guess.upcase.split(//)
  end

  def check_the_player_guess(guess)
    puts "#{guess} has #{correct_color} of the correct elements /n with #{exact_position} colors  in the correct position"
  end

  def exact_position(guess)
    convert_the_guess(guess)
    (generated_colors.zip(@response).map{|x, y| x == y}).count("true")
  end

  def correct_color(guess)
    convert_the_guess
    (guess & generated_colors).count
  end



end
