class User < ActiveRecord::Base

  acts_as_authentic do |c|
   
  end 
  
#attr_accessible :username, :email, :password 
end
