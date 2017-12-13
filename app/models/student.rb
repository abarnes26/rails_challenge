class Student < ApplicationRecord
  validates :name, presence: true
  has_many :addresses, dependent: :destroy
  has_and_belongs_to_many :courses

end
