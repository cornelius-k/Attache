class RemoveColumnsFromSections < ActiveRecord::Migration[5.0]
  def change
    remove_column :sections, :string, :text
    remove_column :sections, :sheet, :text
    remove_column :sections, :references, :text
  end
end
