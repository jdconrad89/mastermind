require_relative 'test_helper'
require_relative '../lib/computer'

class ComputerTest < Minitest::Test

  def test_it_returns_an_array_with_elements
    c = Computer.new

    random_1 = c.randomize_colors_beginner
    random_2 = c.randomize_colors_intermediate
    random_3 = c.randomize_colors_expert

    assert_equal 6, random_3.count
    assert_equal 5, random_2.count
    assert_equal 4, random_1.count
    assert "True", random_1.include?("R" || "Y" || "B" || "G")
  end

  def test_the_guess_has_been_converted
    c = Computer.new(randomize_colors_beginner)

    assert_equal ["R", "B", "G", "Y"], c.convert_the_guess("rbgy")
  end

  def test_it_returns_incorrect_colors
    skip
    c = Computer.new
    result = c.convert_the_guess("rpby")


    assert_equal "You Have guessed an incorrect color please try again",result
  end

  def test_it_returns_exact_position
    c = Computer.new

    c.randomize_colors_beginner == ["R", "Y", "B", "G"]

    result = c.exact_position("yrbg")
    assert_equal 2, result
  end

  def test_it_returns_correct_color
    skip
    c = Computer.new

    generated_colors = ["R", "Y", "B", "G"]

    result = c.correct_color("yrbg")
    assert_equal 4, result
  end

  def test_cheat_prints_out_the_answer
  end
end
