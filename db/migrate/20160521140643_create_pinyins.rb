class CreatePinyins < ActiveRecord::Migration
  def change
    create_table :pinyins do |t|
      t.integer :tone
      t.string :syllable
      t.string :alternative
      t.string :tonespelling

      t.timestamps null: false
    end
  end
end
