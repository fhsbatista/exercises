class RomanNumber
  TABLE = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }

  def self.to_int(input)
    sum = 0

    input.chars.each_with_index do |char, index|
      current_value = TABLE[char]
      next_value = TABLE[input[index + 1]] || 0

      if current_value >= next_value
        sum += current_value
      else
        sum -= current_value
      end
    end

    sum
  end
end
