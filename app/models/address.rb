class Address < ActiveRecord::Base
  belongs_to :user
  validates :house_num, presence: true  
  validates :pin_code, presence: true
  validates :city, presence: true 
end  