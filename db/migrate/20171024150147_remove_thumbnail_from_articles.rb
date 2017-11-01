class RemoveThumbnailFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :articles, :thumbnail
  end
end
