class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter(numbers)

    numbers.split(delimiter).sum(&:to_i)
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
end
