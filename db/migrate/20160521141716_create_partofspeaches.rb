class CreatePartofspeaches < ActiveRecord::Migration
  def change
    create_table :partofspeaches do |t|
      t.string :name
      t.string :short

      t.timestamps null: false
    end
  end
end
