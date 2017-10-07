class Location < ActiveRecord::Base
  before_save {self.email = email.downcase }
  validates :loc_code, presence: true, length: {maximum: 9, minimum: 3} 
  validates :loc_name, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 9, minimum: 3}
  validates :primany_representative, presence: true, uniqueness: {case_sensitive: false}
  validates :phone, presence: true, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
                     format: {with:VALID_EMAIL_REGEX},length: {maximum: 100}
end
