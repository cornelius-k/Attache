class AddMarkupToSheets < ActiveRecord::Migration[5.0]
  def change
    add_column :sheets, :markup, :string
  end
end
