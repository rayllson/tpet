json.array!(@localizations) do |localization|
  json.extract! localization, :id, :name, :address
  json.url localization_url(localization, format: :json)
end
