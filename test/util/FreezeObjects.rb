require './lib/util/DeepFreezable'
class Currency
  extend DeepFreezable
  CURRENCIES = deep_freeze(['Dollar','Yen','Franc','Euro'])
end

class Cryptocurrency
  extend DeepFreezable
  CURRENCIES = deep_freeze(['XEM' => 'NEM', 'XRP' => 'Ripple', 'BTC' => 'Bitcoin'])
end
