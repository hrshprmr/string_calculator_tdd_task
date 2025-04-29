class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    return input.to_i if input =~ /^\d+$/
  
    numbers = input.split(/[\n,]/).map(&:to_i)
    numbers.sum
  end
end