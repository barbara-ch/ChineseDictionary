json.array!(@examples) do |example|
  json.extract! example, :id, :chinese, :spelling, :polish
  json.url example_url(example, format: :json)
end
