class Address < ApplicationRecord
  validates :description, :street, :city, :state, :zip, presence: true, uniqueness: true
  belongs_to :student

end
