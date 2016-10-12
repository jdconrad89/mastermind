require_relative "beginner"
require_relative "intermediate"
require_relative "expert"
require_relative "output_statements"
require "pry"


class Mastermind
  include OutputStatements

  attr_accessor :input,

  def initialize
    @input = ""
  end
binding.pry
    puts OutputStatements.welcome
    input = gets.chomp.downcase
      until input == "q" || input == "quit"
        if input == "p" || input == "play"
          puts OutputStatements.level_selection
          input = gets.chomp.downcase
        if input == "b" || input == "beginner"
          Beginner.new.game_flow
        elsif input == "in" || input == "intermediate"
          Intermediate.new.game_flow
        elsif input == "e" || input == "expert"
          Expert.new.game_flow
        end
      elsif input == "i" || input == "instructions"
        puts OutputStatements.instructions
      end
      input = gets.chomp.downcase
    end
end
