require "spec_helper"

RSpec.describe Arelable do
  describe '#bw' do
    before(:all) do
      User.create(first_name: "Taro", last_name: "Yamada", age: 35)
    end

    it "should not be included" do
      expect(User.bw(:age, [30, 34]).count).to eq 0
    end

    it "should be included" do
      expect(User.bw(:age, [34, 36]).count).to eq 1
    end
  end
end
