class Routine < ApplicationRecord
  belongs_to :user
  has_many :products, through: :routineproducts

  # scope :favorited, -> { where(favorited: true) }

  # def self.favorited
  #   where(favorited: true)
  # end
end

# @user_favorited = Routine.favorited
