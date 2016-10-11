module OutputStatements









  def welcome
    puts " Welcome to the Mastermind sequence, Skynet is about to launch to start their take over of humanity,
    Would you like to (p)lay, read the (i)nstructions, or (q)uit? Help us save all of humanity!!"
  end

  def start_game_beginner
    puts "I have generated a beginner sequence with four elements made up of : (r)ed /n
     (g)reen, and(y)ellow. Use (q)uit at any time to end the game. What would you /n
     like your first guess to be?"
  end

  def start_game_intermediate
    puts  "I have generated a beginner sequence with four elements made up of : (r)ed /n
       (g)reen, (y)ellow, and (w)hite. Use (q)uit at any time to end the game. What would you /n
       like your first guess to be?"
  end

  def start_game_expert
    puts "I have generated a beginner sequence with four elements made up of : (r)ed /n
     (g)reen, (w)ellow, (o)range. Use (q)uit at any time to end the game. What would you /n
     like your first guess to be?"
  end
