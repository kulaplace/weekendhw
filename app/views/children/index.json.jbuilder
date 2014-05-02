json.array!(@children) do |child|
  json.extract! child, :id, :name, :birth
  json.url child_url(child, format: :json)
end
