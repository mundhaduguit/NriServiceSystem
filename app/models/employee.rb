class Employee < ActiveRecord::Base
  
  belongs_to :region
  # => has_one :region
end
