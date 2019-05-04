require "spec_helper"

RSpec.describe Arelable do
  before(:all) do
    User.create(first_name: "Taro", last_name: "Yamada", age: 35)
    User.create(first_name: "Jiro", last_name: "Yamada", age: 35)
  end

  after(:all) do
    User.delete_all
  end

  describe '.all_matches' do
    it "should be included" do
      expect(User.all_matches(:first_name, "Ta").count).to eq 1
    end

    it "should be included" do
      expect(User.all_matches(:first_name, "ro").count).to eq 2
    end
  end

  describe '.forward_matches' do
    it "should be included" do
      expect(User.forward_matches(:first_name, "Ta").count).to eq 1
    end

    it "should be included" do
      expect(User.forward_matches(:first_name, "Jir").count).to eq 1
    end
  end

  describe '.backward_matches' do
    it "should be included" do
      expect(User.backward_matches(:first_name, "ro").count).to eq 2
    end

    it "should be included" do
      expect(User.backward_matches(:first_name, "iro").count).to eq 1
    end
  end
end
