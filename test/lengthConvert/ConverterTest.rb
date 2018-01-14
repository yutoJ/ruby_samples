require 'minitest/autorun'
require './lib/lengthConvert/Converter'

class ConverterTest < Minitest::Test
  def test_convert_length
    conveter = Converter.new
    assert_equal 39.37, conveter.convert_length(1, 'm', 'in')
    assert_equal 0.38, conveter.convert_length(15, 'in', 'm')
    assert_equal 10670.73, conveter.convert_length(35000, 'ft', 'm')
  end
end
