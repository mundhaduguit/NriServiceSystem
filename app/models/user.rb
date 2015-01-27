class User < ActiveRecord::Base
  rolify

  acts_as_authentic 
  
#attr_accessible :username, :email, :password 
end
