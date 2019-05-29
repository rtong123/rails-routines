class Product < ApplicationRecord
  has_many :routineproducts
  has_many :routines, through: :routineproducts
end
