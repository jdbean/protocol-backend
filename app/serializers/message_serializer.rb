class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user, :message, :channel
end
