class AddDescriptionToPlace < ActiveRecord::Migration[6.1]
  def change
    add_column :places, :description, :text
  end
end
