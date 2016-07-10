class RemoveColumnsFromSheets < ActiveRecord::Migration[5.0]
  def change
    remove_column :sheets, :text, :text
  end
end
