class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :category, :author, :title, :description, :url, :urlToImage
end
