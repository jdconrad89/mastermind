module OutputStatements

  def self.welcome
    puts "Welcome to the Mastermind sequence, Skynet is about to start their launch to take over of humanity,
Would you like to (p)lay, read the (i)nstructions, or (q)uit? Help us save all of humanity!!"
  end

  def self.instructions
    puts "Skynet has initiated their code sequence to start their launch on the human population! They have decided
to give you an opportunity to stop them. They have created a sequence of colors, the length of the sequence and
the amount of colors to choose from will differ based on the level that you have chosen. After each guess they will
let you know which colors you chose correctly and which ones are in the right position. Choose wisely and save
all of Humanity! Would you like to (p)lay or (q)uit?"
  end

  def self.level_selection
    puts "Skynet has 3 different difficulties for you to try. There is (b)eginner,
(in)ntermediate, and (e)xpert. Please make a selection, but choose wisely."
  end

  def self.start_game_beginner
    puts "I have generated a beginner sequence with four elements made up of : (r)ed
     (g)reen, (b)lue, and(y)ellow. Use (q)uit at any time to end the game. What would you
     like your first guess to be?"
  end

  def self.start_game_intermediate
    puts "I have generated a beginner sequence with six elements made up of : (r)ed
(g)reen, (b)lue, (y)ellow, and (w)hite. Use (q)uit at any time to end the game. What would you
like your first guess to be?"
  end

  def self.start_game_expert
    puts "I have generated a beginner sequence with 8 elements made up of : (r)ed
(g)reen, (y)ellow, (w)hite, (o)range. Use (q)uit at any time to end the game. What would you
like your first guess to be?"
  end

  def self.game_ended
    puts "Congratulations you have saved humanity! You completed it using only #{count} guesses in #{time}!"
  end

end
