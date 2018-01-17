class NoCountryError < StandardError
  def status
    'serious'
  end
end

def happening
  raise NoCountryError
end

begin
  happening
rescue NoCountryError => e
  puts e.status
end
