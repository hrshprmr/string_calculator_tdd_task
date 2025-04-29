class StringCalculator
  def self.add(input)
    return 0 if input.empty?

    if input.start_with?("//")
      delimiter, input = input.match(%r{//(.)\n(.*)})[1..2]
      numbers = input.split(/#{Regexp.escape(delimiter)}/)
    else
      numbers = input.split(/[\n,]/)
    end
  
    numbers.map(&:to_i).sum
  end
end