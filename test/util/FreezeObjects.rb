require './lib/util/DeepFreeze'
class Currency
  CURRENCIES = deep_freeze(['Dollar','Yen','Franc','Euro'])
end

class Cryptocurrency
  CURRENCIES = deep_freeze(['XEM' => 'NEM', 'XRP' => 'Ripple', 'BTC' => 'Bitcoin'])
end
