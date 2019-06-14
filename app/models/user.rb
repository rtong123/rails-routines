class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  has_many :routines
  after_initialize :set_defaults

    def set_defaults
      self.uid ||= "okay"
    end

end
