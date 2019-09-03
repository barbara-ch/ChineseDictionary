class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :content
      t.integer :pos_id

      t.timestamps null: false
    end
  end
end
