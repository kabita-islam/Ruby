class User < ApplicationRecord
  has_many :lists
  validates :username,  presence: true
  validates :email, presence: true
end
