class HanzisWords < ActiveRecord::Migration
  def change
  	create_join_table :hanzis, :words do |t|
       t.references :word
       t.references :hanzi
    end
    add_index  :hanzis_words, [ :hanzi_id, :word_id ], :unique => true
  end
end
