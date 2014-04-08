json.array!(@frats) do |frat|
  json.extract! frat, :id, :name, :id
  json.url frat_url(frat, format: :json)
end
