class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :content
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
