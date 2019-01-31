require "spec_helper"

RSpec.describe Arelable do
  describe '#matches' do
    before(:all) do
      User.create(first_name: "Taro", last_name: "Yamada", age: 35)
    end

    it "should be included" do
      expect(User.matches(:first_name, "Ta").count).to eq 1
    end

    it "should be included" do
      expect(User.matches(:first_name, "ro").count).to eq 1
    end
  end
end
