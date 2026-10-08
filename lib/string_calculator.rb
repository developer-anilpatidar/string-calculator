class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.split(/,|\n/).sum(&:to_i)
  end
end
