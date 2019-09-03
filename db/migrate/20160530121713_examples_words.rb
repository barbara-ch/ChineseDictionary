class ExamplesWords < ActiveRecord::Migration
  def change
  	create_join_table :examples, :words do |t|
       t.references :word
       t.references :example
    end
    add_index  :examples_words, [ :example_id, :word_id ], :unique => true
  end
end
