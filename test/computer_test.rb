require_relative 'test_helper'
require_relative '../lib/computer'

class ComputerTest < Minitest::Test

  def test_it_returns_an_array_with_elements
    c = Computer.new
    result_1 = c.randomize_colors_beginner
    result_2 = c.randomize_colors_intermediate
    result_3 = c.randomize_colors_expert

    assert_equal 4, result_1.count
    assert_equal 6, result_2.count
    assert_equal 8, result_3.count
    assert "True", result_1.include?("R" || "Y" || "B" || "G")
    assert "True", result_1.include?("R" || "Y" || "B" || "G" || "W")
    assert "True", result_1.include?("R" || "Y" || "B" || "G" || "W" || "O")
  end

  def test_the_guess_has_been_converted
    c = Computer.new

    assert_equal ["R", "B", "G", "Y"], c.convert_the_guess("rbgy")
    assert_equal ["R", "Y", "B", "G", "Y", "O"], c.convert_the_guess( "rybgyo")
    assert_equal ["R", "Y", "B", "G", "Y", "O", "W", "R"], c.convert_the_guess( "rybgyowr")
  end

  def test_exact_position_returns_a_fixnum
    c = Computer.new

    result = c.exact_position("rybg")

    assert true, result.is_a?(Fixnum)
  end

  def test_it_returns_correct_colors_returns
    c = Computer.new

    c.generated_colors = ["Y", "R", "B", "G"]
    result = c.correct_color("brbg")


    assert_equal 4, c.generated_colors.count
    assert true, result.is_a?(Fixnum)
  end

  def test_check_the_counter_works
    c = Computer.new

    c.response = ["R", "Y", "B", "G"]
    c.generated_colors = ["R", "Y", "G", "B"]
    result = c.check_the_player_guess("rybg")

    assert_equal 1 , result
  end

  def test_elapsed_time_returns_a_time
    c = Computer.new

    c.start =  Time.new
    c.finish =  Time.new
    result = c.elapsed_time

    assert_equal "00:00",result
  end

  def _test_game_ended_prints_a_message
    c = Computer.new

    result = c.game_ended
    result_1 = "Congratulations! you have saved the world from Skynet! You
completed the game in #{@count} turn(s) with your guess #{@guess.upcase} and a time of #{elapsed_time} ! Would you like to (p)lay again or (q)uit?"
    assert_equal result_1, result.empty?
  end



end
