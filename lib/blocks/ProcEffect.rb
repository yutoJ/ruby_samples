module ProcEffects

  def self.reverse
    ->(words) do
      words.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(num)
    -> (words) do
      words.chars.map { |c| c == ' ' ? c : c * num }.join
    end
  end
end
