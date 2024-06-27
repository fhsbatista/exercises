require 'byebug'

class LongestPrefixNumber
  def self.find(inputs)
    prefixes = []

    inputs.each do |input|
      prefixes += prefixes(input)
    end

    prefixes = prefixes.sort_by { |array| -array.length }

    most_frequent_prefix = ''
    most_frequent_prefix_count = 0

    prefixes.flatten.each do |prefix|
      count = prefixes.select {|e| e == prefix }.length
      if count > most_frequent_prefix_count && count == inputs.length
        most_frequent_prefix = prefix
        most_frequent_prefix_count = count
      end
    end

    most_frequent_prefix
  end

  def self.prefixes(input)
    prefixes = []
    input.chars.each_with_index do |_, index|
      prefixes << input.slice(0, index + 1)
    end
    prefixes
  end
end
