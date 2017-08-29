class AddHiddenToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :hidden, :boolean, :default => false
  end
end
