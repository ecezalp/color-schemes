class CreateExcerptSchemes < ActiveRecord::Migration[5.0]
  def change
    create_table :excerpt_schemes do |t|
      t.string :excerpt_id
      t.integer :scheme_id

      t.timestamps null: false
    end
  end
end
