require 'spec_helper'

describe User do
  describe "attributes" do
    it { should respond_to :name}
    it { should respond_to :nickname}
    it { should respond_to :uid}
  end
  describe "class methods" do
    describe "find_or_create_with_omniauth_hash" do
      before :each do
        @omniauth_hash = 
          {:info => {
            :name => 'joanmi',
            :nickname => 'joanmikel',
            :uid => "140400021",
            :image => "http://a2.twimg.com/profile_images/937785367/080120_normal.jpg"
          }}
      end
      it "should grap omniauth info and create new user" do
        expect do
          User.find_or_create_with_omniauth_hash(@omniauth_hash)
        end.to change(User, :count).by(1)
      end
      it "should not create existing users" do
        User.find_or_create_with_omniauth_hash(@omniauth_hash)
        expect do
          User.find_or_create_with_omniauth_hash(@omniauth_hash)
        end.to_not change(User, :count)
      end
      it "should return user created" do
        user = User.find_or_create_with_omniauth_hash(@omniauth_hash)
        user.should eq User.last
      end
    end
    
  end
end
