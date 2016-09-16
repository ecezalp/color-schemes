class CreateSchemes < ActiveRecord::Migration
  def change
    create_table :schemes do |t|
      t.string :scheme_name
      t.integer :creator_id
      t.integer :excerpt_id

      t.timestamps null: false
    end
  end
end