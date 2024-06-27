require "spec_helper"
require "./longest_prefix_number"

RSpec.describe LongestPrefixNumber do
  describe "#find" do
    it { expect(LongestPrefixNumber.find(["abc", "def", "ghi"])).to eq("") }
    it { expect(LongestPrefixNumber.find(["preview", "predict", "oracle", "prefix"])).to eq("") }
    it { expect(LongestPrefixNumber.find(["flower", "flow", "flight"])).to eq("fl") }
    it { expect(LongestPrefixNumber.find(["flower", "flod", "flow"])).to eq("flo") }
  end

  describe "#prefixes" do
    it { expect(LongestPrefixNumber.prefixes("hello")).to eq(["h", "he", "hel", "hell", "hello"]) }
  end
end
