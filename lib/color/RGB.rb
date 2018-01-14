def to_hex_rgb(num)
  num.to_s(16).rjust(2, "0")
end

def to_hex(r, g, b)
  "#" + to_hex_rgb(r) + to_hex_rgb(g) + to_hex_rgb(b)
end

def to_ints(s)
  [s.slice(1,2).hex, s.slice(3,2).hex, s.slice(5,2).hex]
end
