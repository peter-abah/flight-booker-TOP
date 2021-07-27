class RenameColumnInAirports < ActiveRecord::Migration[6.1]
  def change
    rename_column :airports, :name, :code
  end
end
