json.array!(@pinyins) do |pinyin|
  json.extract! pinyin, :id, :tone, :syllable, :alternative
  json.url pinyin_url(pinyin, format: :json)
end
