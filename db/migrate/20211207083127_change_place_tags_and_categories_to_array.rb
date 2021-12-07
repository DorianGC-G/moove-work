class ChangePlaceTagsAndCategoriesToArray < ActiveRecord::Migration[6.1]
  def change
    remove_column :places, :tags
    remove_column :places, :categories
    add_column :places, :tags, :text, array: true, default: []
    add_column :places, :categories, :text, array: true, default: []
  end
end
