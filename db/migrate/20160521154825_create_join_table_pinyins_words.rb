class CreateJoinTablePinyinsWords < ActiveRecord::Migration
  def change
    create_join_table :pinyins, :words do |t|
       t.references :word
       t.references :pinyin
    end
    add_index  :pinyins_words, [ :pinyin_id, :word_id ], :unique => true
  end
end
