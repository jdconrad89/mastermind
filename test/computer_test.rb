require_relative 'test_helper'
require_relative '../lib/computer'

class ComputerTest < Minitest::Test

  def test_it_returns_an_array_with_elements
    c = Computer.new

    random = c.randomize_colors_beginner


    assert "True", random.include?("R" || "Y" || "B" || "G")
  end

  def test_the_guess_has_been_converted
    c = Computer.new

    assert_equal ["R", "B", "G", "Y"], c.convert_the_guess("rbgy")
  end

  def test_it_returns_incorrect_colors
    skip
    c = Computer.new
    result = c.convert_the_guess("rpby")


    assert_equal "You Have guessed an incorrect color please try again",result
  end

  def test_it_returns_exact_position
    skip
    c = Computer.new

    generated_colors = ["R", "Y", "B", "G"]

    result = c.exact_position("yrbg")
    assert_equal 2, result
  end

  def test_it_returns_correct_color
    c = Computer.new

    generated_colors = ["R", "Y", "B", "G"]

    result = c.correct_color("yrbg")
    assert_equal 4, result
  end
end
