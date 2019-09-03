json.array!(@words) do |word|
  json.extract! word, :id, :hanzi_id, :pinyin_id, :trans_id, :example_id, :pos_id
  json.url word_url(word, format: :json)
end
