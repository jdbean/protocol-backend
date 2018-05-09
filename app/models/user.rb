class User < ApplicationRecord
  has_secure_password
  belongs_to :language
  has_many :memberships
  has_many :channels, through: :memberships

end
