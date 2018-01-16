require 'minitest/autorun'
require './lib/util/DeepFreeze'
require './test/util/FreezeObjects'

class DeepFreezeTest < Minitest::Test
  def test_deep_freezed_list
    assert Currency::CURRENCIES.frozen?
    assert Currency::CURRENCIES.all? { |currency| currency.frozen? }
  end
  def test_deep_freezed_hash
    assert Cryptocurrency::CURRENCIES.frozen?
    assert Cryptocurrency::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end
