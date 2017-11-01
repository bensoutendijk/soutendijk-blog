class ReplaceTextInArticlesWithBody < ActiveRecord::Migration[5.0]
  def up
    add_column :articles, :body, :string
  end
  
  def down
    remove_column :articles, :text, :string
  end
end
