class Region < ActiveRecord::Base
  has_many :employees
  belongs_to :employee
end
