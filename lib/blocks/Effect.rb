class Effects
  def self.echo(num)
    Echo.new(num)
  end

  def self.reverse
    Reverse.new
  end
end


class Reverse
  def call(words)
    words.split(" ").map(&:reverse).join(" ")
  end
end

class Echo
  def initialize(num)
    @num = num
  end

  def call(words)

    result = []
    words.split(" ").each do |word|
      str = ""
      word.each_char { |c| @num.times { str << c } }
      result << str
    end
    result.join(" ")
  end
end
