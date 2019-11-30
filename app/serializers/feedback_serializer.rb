class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating
end
