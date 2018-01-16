a = Array.new(5,0)
puts a.to_s


def order(menu, drink: true, ice: true)
end

sample('coke',drink: true, ice: false)
params = { drink: false, ice: false }
sample('tea', params)

def order_detail(menu, options = {})
  delivery = options[:delivery]
  feature = options[:feature]
end

order_detail("sushi", delivery: true, feature: true)

def quick_order(menu, **others)
end

quick_order("sushi", delivery: true, feature: true)
