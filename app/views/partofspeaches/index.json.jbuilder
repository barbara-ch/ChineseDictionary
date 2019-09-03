json.array!(@partofspeaches) do |partofspeach|
  json.extract! partofspeach, :id, :name, :short
  json.url partofspeach_url(partofspeach, format: :json)
end
