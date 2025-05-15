class Test < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 10 }
  validates :age, presence: true
end
