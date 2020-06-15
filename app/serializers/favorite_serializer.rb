class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :userId, :articleId
end
