class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  #this tells rails to validate that the two passwords match when user enters password then reenters it
end
