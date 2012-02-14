require 'spec_helper.rb'

class Dummy
  def hello
    return "HelloWorld!" 
  end
  def say(arg)
    arg || 'mf'
  end
end

describe Dummy do
  before :each do
    @dummy = Dummy.new
  end
  describe "hello method" do 
    it "should return hello world!" do
      @dummy.hello.should eq("HelloWorld!")
    end
  end
  describe "say method" do
    it "should repeat my own words" do
      @dummy.say("joanmi").should eq("joanmi")
      @dummy.say("manfred").should eq("manfred")
    end
    it "should return mf if we pass nil" do
      @dummy.say(nil).should eq("mf")
    end
  end
end
