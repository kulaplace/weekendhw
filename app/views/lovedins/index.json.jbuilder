json.array!(@lovedins) do |lovedin|
  json.extract! lovedin, :id, :name, :birth
  json.url lovedin_url(lovedin, format: :json)
end
