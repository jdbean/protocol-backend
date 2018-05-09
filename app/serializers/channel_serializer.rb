class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :messages
  #has_many :memberships
  has_many :users, through: :memberships
end
