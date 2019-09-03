json.array!(@hanzis) do |hanzi|
  json.extract! hanzi, :id, :character, :description, :traditional, :stroke
  json.url hanzi_url(hanzi, format: :json)
end
