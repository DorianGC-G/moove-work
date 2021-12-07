class AddArchiveToReservation < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :status
    add_column :reservations, :status, :text, array: true, default: []
    add_column :reservations, :archived, :boolean, default: false
  end
end
