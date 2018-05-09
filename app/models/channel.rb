class Channel < ApplicationRecord
  has_many :messages
  has_many :memberships
  has_many :users, through: :memberships
  accepts_nested_attributes_for :messages, :users, :memberships
end
