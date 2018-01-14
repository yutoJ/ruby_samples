require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    ok = true
    ng = false
    assert_equal 'HELLO', 'hello'.upcase
    assert ok
    refute ng
  end
end
