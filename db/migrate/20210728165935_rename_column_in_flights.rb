class RenameColumnInFlights < ActiveRecord::Migration[6.1]
  def change
    rename_column :flights, :start_time, :date
  end
end
