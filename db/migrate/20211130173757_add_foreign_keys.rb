class AddForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :places, :user, foreign_key: true
    add_reference :reservations, :user, foreign_key: true
    add_reference :reservations, :place, foreign_key: true
  end
end
