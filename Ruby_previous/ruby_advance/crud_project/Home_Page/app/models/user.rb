class User < ApplicationRecord
  has_many :lists
  validates :username,  presence: true
  validates :email, presence: true
  validates :password, presence: true
  has_secure_password
end
