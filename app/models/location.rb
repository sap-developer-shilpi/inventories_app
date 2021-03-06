class Location < ActiveRecord::Base
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
  
  before_save {self.email = email.downcase }
  validates :loc_code, presence: true, length: {maximum: 9, minimum: 1} 
  validates :loc_name, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 20, minimum: 3}
  validates :primary_representative, presence: true, uniqueness: {case_sensitive: false}
  validates :phone, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
                     format: {with:VALID_EMAIL_REGEX},length: {maximum: 100}
end
