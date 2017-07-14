class AddCropWAndCropHAndCropXAndCropYToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :crop_x, :string
    add_column :articles, :crop_y, :string
    add_column :articles, :crop_h, :string
    add_column :articles, :crop_w, :string
  end
end
