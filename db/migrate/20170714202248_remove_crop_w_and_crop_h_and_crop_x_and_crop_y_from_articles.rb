class RemoveCropWAndCropHAndCropXAndCropYFromArticles < ActiveRecord::Migration[5.0]
  def change
    remove_column :articles, :crop_x, :string
    remove_column :articles, :crop_y, :string
    remove_column :articles, :crop_h, :string
    remove_column :articles, :crop_w, :string
  end
end