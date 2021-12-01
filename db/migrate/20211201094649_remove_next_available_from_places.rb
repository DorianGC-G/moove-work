class RemoveNextAvailableFromPlaces < ActiveRecord::Migration[6.1]
  def change
    remove_column :places, :next_available
  end
end
