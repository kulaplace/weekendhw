json.array!(@liaisons) do |liaison|
  json.extract! liaison, :id, :name, :relation
  json.url liaison_url(liaison, format: :json)
end
