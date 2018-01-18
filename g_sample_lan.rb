
def greeting_ja(&block)
  texts = ["はろ", "ねむ", "ばい"]
  greeting_common(texts, &block)
end

def greeting_en(&block)
  texts = ['hello', 'good afternoon', 'see you']
  greeting_common(texts, &block)
end

def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end

greeting_en do |text|
  text * 2
end
