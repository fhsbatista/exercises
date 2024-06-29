require 'byebug'

class ValidParentheses
  def self.valid?(input)
    stack = []

    symbols_dict = {
      '(' => ')',
      '[' => ']',
      '{' => '}'
    }

    symbol_type = {
      '(' => :opening,
      '[' => :opening,
      '{' => :opening,
      ')' => :closing,
      ']' => :closing,
      '}' => :closing,
    }

    input.each_char do |char|
      is_opening = symbol_type[char] == :opening

      if is_opening
        stack.push char
        next
      else
        opened_char = stack.last
        if symbols_dict[opened_char] == char
          stack.pop
          next
        else
          return false
        end
      end
    end

    stack.empty?
  end
end
