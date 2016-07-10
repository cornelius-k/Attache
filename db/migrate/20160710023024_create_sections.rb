class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :type
      t.string :string
      t.string :title
      t.string :string
      t.string :sheet
      t.string :references

      t.timestamps
    end
  end
end
