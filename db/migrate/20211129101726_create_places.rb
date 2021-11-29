class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :categories
      t.string :tags
      t.integer :price_per_day
      t.string :renter
      t.date :next_available
      t.integer :max_capacity
      t.integer :size

      t.timestamps
    end
  end
end
