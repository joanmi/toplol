class User < ActiveRecord::Base
  def self.find_or_create_with_omniauth_hash(omniauth_hash)
    user_info = omniauth_hash[:info]
    @user = User.find_or_create_by_uid(user_info[:uid])
    @user.update_attributes(:nickname => user_info[:nickname], :name => user_info[:name])
    return @user
  end
end
