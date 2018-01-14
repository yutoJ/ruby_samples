require 'minitest/autorun'
require './lib/lengthConvert/Converter'

class ConverterTest < Minitest::Test
  def test_convert_length
    conveter = Converter.new
    assert_equal 39.37, conveter.convert_length(1, from: :m, to: :in)
    assert_equal 0.38, conveter.convert_length(15, from: :in, to: :m)
    assert_equal 10670.73, conveter.convert_length(35000, from: :ft, to: :m)
  end
end
