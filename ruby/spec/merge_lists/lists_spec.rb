require "spec_helper"
require "./lists"

RSpec.describe Lists do
  describe "#merge" do
    it { expect(Lists.merge([[1, 2, 3], [1, 2, 3]])).to eq([1, 2, 3, 1, 2, 3]) }
  end

  describe "#sort", :focus do
    it { expect(Lists.sort([1, 2, 3, 1, 2, 3])).to eq([1, 1, 2, 2, 3, 3]) }
  end
end
