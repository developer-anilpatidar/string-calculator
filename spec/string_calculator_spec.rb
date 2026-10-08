require "string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do

    let(:calculator) { StringCalculator.new }

    it "returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number when given a single number" do
      expect(calculator.add("1")).to eq(1)
    end

    it "returns the sum when given two comma-separated numbers" do
      expect(calculator.add("1,5")).to eq(6)
    end

    it "returns the sum when given any amount of comma-separated numbers" do
      expect(calculator.add("1,2,3,4")).to eq(10)
    end

    it "handles newlines between numbers" do
      expect(calculator.add("1\n2,3")).to eq(6)
    end

    it "supports a custom delimiter" do
      expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an exception when given a negative number" do
      expect { calculator.add("1,-2") }
        .to raise_error("negative numbers not allowed -2")
    end

    it "includes multiple negative numbers in the exception message" do
      expect { calculator.add("1,-2,3,-4") }
        .to raise_error("negative numbers not allowed -2,-4")
    end

    it "ignores numbers bigger than 1000" do
      expect(calculator.add("2,1001")).to eq(2)
    end

    it "supports delimiters of any length" do
      expect(calculator.add("//[***]\n1***2***3")).to eq(6)
    end

    it "supports multiple custom delimiters" do
      expect(calculator.add("//[*][%]\n1*2%3")).to eq(6)
    end

    it "supports multiple custom delimiters with multiple characters" do
      expect(calculator.add("//[***][%%]\n1***2%%3")).to eq(6)
    end
  end
end
