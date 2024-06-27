class LongestPrefixNumber
  def self.find(inputs)
    prefixes_count = Hash.new(0)

    inputs.each do |input|
      input.length.times do |i|
        prefix = input[0..i]
        prefixes_count[prefix] += 1
      end
    end

    most_frequent_prefix = ''

    prefixes_count.each do |prefix, count|
      if count == inputs.length && prefix.length > most_frequent_prefix.length
        most_frequent_prefix = prefix
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
