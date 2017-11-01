class AddIconToArticle < ActiveRecord::Migration[5.0]
  def change
    add_attachment :articles, :icon
  end
end
