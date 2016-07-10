class CreateSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :sheets do |t|
      t.text :title
      t.text :template
      t.references :dossier, foreign_key: true

      t.timestamps
    end
  end
end
