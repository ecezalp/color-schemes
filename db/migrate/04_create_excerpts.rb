class CreateExcerpts < ActiveRecord::Migration
  def change
    create_table :excerpts do |t|
      t.string :content
      t.integer :writer_id

      t.timestamps null: false
    end
  end
end