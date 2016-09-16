class CreateColorSchemes < ActiveRecord::Migration
  def change
    create_table :color_schemes do |t|
      t.string :color_id
      t.integer :scheme_id

      t.timestamps null: false
    end
  end
end