class RemoveTextAndBodyFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :body, :string
    remove_column :articles, :text, :text
  end
end
