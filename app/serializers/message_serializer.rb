class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user, :message, :channel, :created_at 
end
