require 'minitest/autorun'
require './lib/color/RGB'

class RGBTest < Minitest::Test

  def test_hex_s
    assert_equal '00', to_hex_rgb(0)
    assert_equal 'ff', to_hex_rgb(255)
    assert_equal '78', to_hex_rgb(120)
  end

  def test_hex
    assert_equal '#000000', to_hex(0,0,0)
    assert_equal '#ffffff', to_hex(255,255,255)
    assert_equal '#043c78', to_hex(4,60,120)
  end
  def test_ints
    block = [0,0,0]
    white = [255,255,255]
    sample = [4,60,120]
    assert_equal block, to_ints('#000000')
    assert_equal white, to_ints('#ffffff')
    assert_equal sample, to_ints('#043c78')
  end
end
