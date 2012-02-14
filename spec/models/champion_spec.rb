require 'spec_helper'

describe Champion do
  describe "attributes" do
    it { should respond_to :name}
  end

  describe "validations" do
    it "champion with existing name should not be valid" do
      Champion.create(:name => "Annie")
      champion = Champion.create(:name => "Annie")
      champion.should_not be_valid # champion.valid?
    end
  end
end
