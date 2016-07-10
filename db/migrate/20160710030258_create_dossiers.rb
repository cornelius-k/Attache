class CreateDossiers < ActiveRecord::Migration[5.0]
  def change
    create_table :dossiers do |t|
      t.text :title
      t.text :template

      t.timestamps
    end
  end
end
