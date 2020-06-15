class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :category
      t.string :author
      t.string :title
      t.string :description
      t.string :url
      t.string :publishedAt
      t.string :urlToImage

      t.timestamps
    end
  end
end
