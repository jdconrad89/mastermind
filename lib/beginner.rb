require_relative "output_statements"
require_relative "analyze"


class Beginner
  include OutputStatements
  include Analyze

  attr_accessor :colors_beginner,
              :generated_colors,
              :correct_guesses,
              :response,
              :guess,
              :count,
              :start

  def initialize
    @colors_beginner = ["R", "Y", "B", "G"]
    @generated_colors = []
    @response = []
    @guess = ""
    @start = Time.new
    @count = 0
  end

  def game_flow
    randomize_colors_beginner

    puts OutputStatements.start_game_beginner
    @guess = gets.chomp.downcase
    start
    until guess == generated_colors
      if guess == "c" || guess == "cheat"
        puts "#{generated_colors.join}"
        @guess = gets.chomp.downcase
      elsif guess == "q" || guess == "quit"
        quit_game
      elsif guess.length < 4
        puts "Too short try again."
        guess
      elsif guess.length > 5
        puts "Too long try again."
        guess
      else
        check_the_player_guess(guess)
        @guess = gets.chomp.downcase
      end
    end
    # game_ended
  end
  #

  def randomize_colors_beginner
    @generated_colors = 4.times.map{colors_beginner.sample(1)}.flatten
  end


  def check_the_player_guess(guess)
    convert_the_guess(guess)
    if @response == @generated_colors
      game_ended
    else
      puts "#{guess} has #{correct_color(response)} of the correct elements with #{exact_position(response)} colors  in the correct position"
      @count += 1
    end
  end

  def convert_the_guess(guess)
    @response = guess.upcase.split(//)
  end

  def exact_position(guess)
    # convert_the_guess(guess)
    (@generated_colors.zip(@response).map{|x, y| x == y}).count(true)
  end

  def correct_color(guess)
    # convert_the_guess(guess)
    (@response & @generated_colors).count
  end

  def quit_game
    abort("Skynet has won!")
  end

  def game_ended
    puts "Congratulations! you have saved the world from Skynet! You
completed the game in #{@count} turn(s) with a time of #{elapsed_time} seconds
would you like to (p)lay again or (q)uit?"
    @guess = gets.chomp.downcase
    if guess == "p" || guess == "play"
      game_flow
    else
      quit_game
    end
  end

  def elapsed_time
    finish = Time.new
    time = finish - @start
    binding.pry
    Time.at(time).utc.strftime("%M:%S").split
  end
end
