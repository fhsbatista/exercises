require "spec_helper"
require "./valid_parentheses"

RSpec.describe RomanNumber do
  describe "#valid?" do
    it { expect(ValidParentheses.valid?("()")).to eq(true) }
    it { expect(ValidParentheses.valid?("[()]")).to eq(true) }
    it { expect(ValidParentheses.valid?("()[]{}")).to eq(true) }
    it { expect(ValidParentheses.valid?("(]")).to eq(false) }
    it { expect(ValidParentheses.valid?("a{[()]}a")).to eq(false) }
    it { expect(ValidParentheses.valid?("(")).to eq(false) }
  end
end
