class CreateHanzis < ActiveRecord::Migration
  def change
    create_table :hanzis do |t|
      t.string :character
      t.string :description
      t.string :traditional
      t.integer :stroke

      t.timestamps null: false
    end
  end
end
