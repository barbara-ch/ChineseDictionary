class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :chinese
      t.string :spelling
      t.string :polish

      t.timestamps null: false
    end
  end
end
