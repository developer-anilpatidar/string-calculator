class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter(numbers)
    validate_negative_numbers(numbers, delimiter)

    numbers.split(delimiter)
      .map(&:to_i)
      .reject { |number| number > 1000 }
      .sum
  end

  private

  def extract_delimiter(numbers)
    # Custom format: "//[delimiter]\n[numbers]"
    # Example: "//;\n1;2" uses ";" as the delimiter.

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      [delimiter, numbers]
    else
      [/,|\n/, numbers]
    end
  end

  def validate_negative_numbers(numbers, delimiter)
    negatives = numbers.split(delimiter).select { |number| number.to_i.negative? }
    return if negatives.empty?

    raise "negative numbers not allowed #{negatives.join(",")}"
  end
end
