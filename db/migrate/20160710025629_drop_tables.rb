class DropTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :dossiers
    drop_table :sheets
    drop_table :fields
    drop_table :sections
  end
end
