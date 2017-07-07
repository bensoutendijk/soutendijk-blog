class AddThumbnailAverageColorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :average_color, :string
  end
end
