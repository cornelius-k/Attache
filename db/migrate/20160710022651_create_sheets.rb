class CreateSheets < ActiveRecord::Migration[5.0]
  def change
    create_table :sheets do |t|
      t.string :title
      t.string :text
      t.string :template
      t.string :text

      t.timestamps
    end
  end
end
