require "spec_helper"
require "./roman_number"

RSpec.describe RomanNumber do
  describe "#to_int" do
    it { expect(RomanNumber.to_int("I")).to eq(1) }
    it { expect(RomanNumber.to_int("II")).to eq(2) }
    it { expect(RomanNumber.to_int("III")).to eq(3) }
    it { expect(RomanNumber.to_int("IV")).to eq(4) }
    it { expect(RomanNumber.to_int("V")).to eq(5) }
    it { expect(RomanNumber.to_int("VI")).to eq(6) }
    it { expect(RomanNumber.to_int("VII")).to eq(7) }
    it { expect(RomanNumber.to_int("VIII")).to eq(8) }
    it { expect(RomanNumber.to_int("IX")).to eq(9) }
    it { expect(RomanNumber.to_int("X")).to eq(10) }
    it { expect(RomanNumber.to_int("XIV")).to eq(14) }
    it { expect(RomanNumber.to_int("LVIII")).to eq(58) }
    it { expect(RomanNumber.to_int("MCMXCIV")).to eq(1994) }
    it { expect(RomanNumber.to_int("MMXXIV")).to eq(2024) }
  end
end
