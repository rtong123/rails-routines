class Routine < ApplicationRecord
  belongs_to :user
  has_many :products, through: :routineproducts
end
