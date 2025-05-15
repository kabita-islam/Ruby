class List < ApplicationRecord
belongs_to :user
validates :name, presence: true, length: {minimum: 3, maximum: 50}
validates :roll, presence: true, length: {minimum: 3, maximum: 50}
validates :grade, presence: true, length: {minimum: 3, maximum: 50}
end
