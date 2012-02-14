class Champion < ActiveRecord::Base
  validates :name, :uniqueness => { :message => "Champion already exist" }
end
