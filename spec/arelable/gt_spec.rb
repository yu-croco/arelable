require "spec_helper"

RSpec.describe Arelable do
  describe '#gt' do
    before(:all) do
      User.create(first_name: "Taro", last_name: "Yamada", age: 35)
    end

    it "should not be included" do
      expect(User.gt(:age, 35).count).to eq 0
    end

    it "should be included" do
      expect(User.gt(:age, 34).count).to eq 1
    end
  end
end
