require_relative "beginner"

module Analyze

  attr_accessor :generated_colors

  def self.convert_the_guess(guess)
    binding.pry
    @response = guess.upcase.split(//)
  end

  def self.exact_position(response)
    binding.pry
    (@generated_colors.zip(@response).map{|x, y| x == y}).count(true)
  end

  def self.correct_color(response)
    binding.pry
    (@response & @generated_colors).count
  end

  def self.cheater
    puts "#{@generated_colors}"
  end

  def self.check_the_player_guess(guess)
    binding.pry
    convert_the_guess(guess)
    # count+= 1
    puts "#{guess} has #{correct_color(guess)} of the correct elements with #{exact_position(guess)} colors  in the correct position"
  end

  def self.elapsed_time
  now = Time.new
  time = now - @start
  time.to_s
end

end
