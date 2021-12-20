class AddImageUrlToPlaces < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :image_url, :text, array: true, default: []
  end
end
