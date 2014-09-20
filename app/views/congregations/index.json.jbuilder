json.array!(@congregations) do |congregation|
  json.extract! congregation, :id, :name, :address
  json.url congregation_url(congregation, format: :json)
end
