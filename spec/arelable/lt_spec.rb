require "spec_helper"

RSpec.describe Arelable do
  before(:all) do
    User.create(first_name: "Taro", last_name: "Yamada", age: 35)
  end

  after(:all) do
    User.delete_all
  end

  describe '.lt' do
    it "should be included" do
      expect(User.lt(:age, 36).count).to eq 1
    end

    it "should not be included" do
      expect(User.lt(:age, 35).count).to eq 0
    end
  end

  describe '.lteq' do
    it "should be included" do
      expect(User.lteq(:age, 35).count).to eq 1
    end

    it "should not be included" do
      expect(User.lteq(:age, 34).count).to eq 0
    end
  end
end
