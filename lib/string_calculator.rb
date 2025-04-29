class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    return input.to_i if input =~ /^\d+$/
  end
end