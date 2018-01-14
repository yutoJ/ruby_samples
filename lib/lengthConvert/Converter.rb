class Converter
  @@meter_rate = { 'm' => 1.0, 'ft' => 3.28, 'in' => 39.37 }

  def to_meter(num, unit)
    (num / @@meter_rate[unit]).floor(2)
  end

  def meter_to(num, unit)
    num * @@meter_rate[unit]
  end

  def convert_length(num, from, to)
    self.meter_to(self.to_meter(num, from), to)
  end
end
