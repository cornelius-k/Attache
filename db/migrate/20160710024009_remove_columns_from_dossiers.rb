class RemoveColumnsFromDossiers < ActiveRecord::Migration[5.0]
  def change
    remove_column :dossiers, :text, :string
  end
end
