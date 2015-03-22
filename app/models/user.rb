class User < ActiveRecord::Base
  rolify

  acts_as_authentic 
  has_many :orders
#attr_accessible :username, :email, :password 
end
