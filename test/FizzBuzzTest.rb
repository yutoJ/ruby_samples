require 'minitest/autorun'
require './lib/FizzBuzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', fizzBuzz(1)
    assert_equal '2', fizzBuzz(2)
    assert_equal 'Fizz', fizzBuzz(3)
    assert_equal '4', fizzBuzz(4)
    assert_equal 'Buzz', fizzBuzz(5)
    assert_equal 'Fizz', fizzBuzz(6)
    assert_equal 'Buzz', fizzBuzz(10)
    assert_equal 'Fizz Buzz', fizzBuzz(15)
    assert_equal 'Fizz Buzz', fizzBuzz(30)
  end
end
