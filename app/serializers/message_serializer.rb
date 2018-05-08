class MessageSerializer < ActiveModel::Serializer
  attributes :id, :sender, :body, :channel
end
