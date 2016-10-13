require_relative 'test_helper'
require_relative '../lib/beginner'

class ComputerTest < Minitest::Test

  def test_it_returns_an_array_with_elements
    b = Beginner.new

    random_1 = b.randomize_colors_beginner

    assert_equal 4, random_1.count
    assert "True", random_1.include?("R" || "Y" || "B" || "G")
  end

  def test_the_guess_has_been_converted
    b = Beginner.new

    assert_equal ["R", "B", "G", "Y"], b.convert_the_guess("rbgy")
  end

  def test_it_returns_exact_position
    b = Beginner.new
    # b.randomize_colors_beginner == ["R", "Y", "B", "G"]
    b.stub(:randomize_colors_beginner) { ["R", "Y", "B", "G"] }
    # binding.pry
    # b.stub :randomize_colors_beginner, ["R", "Y", "B", "G"] do
    result = b.exact_position(["Y", "R", "B", "G"])
    assert_equal 2, result

  end

  def test_it_returns_correct_color
    b = Beginner.new

    generated_colors = ["R", "Y", "B", "G"]

    result = b.correct_color("yrbg")
    assert_equal 4, result
  end

  def test_cheat_prints_out_the_answer
    skip
  end
end
