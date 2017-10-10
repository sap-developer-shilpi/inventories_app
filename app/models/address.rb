class Address < ActiveRecord::Base
  belongs_to :location
  validates :building_num, presence: true  
  validates :pin_code, presence: true
  validates :city, presence: true 
end  