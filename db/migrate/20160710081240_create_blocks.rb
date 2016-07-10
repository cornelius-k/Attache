class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.text :type
      t.text :content
      t.references :sheet, foreign_key: true

      t.timestamps
    end
  end
end
