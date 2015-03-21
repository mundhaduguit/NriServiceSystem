class Order < ActiveRecord::Base
  has_many :pictures, :as => :imageable, dependent: :destroy
  accepts_nested_attributes_for :pictures
end
