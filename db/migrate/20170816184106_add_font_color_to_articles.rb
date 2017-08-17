class AddFontColorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :font_color, :string
  end
end
