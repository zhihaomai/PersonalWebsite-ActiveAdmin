json.(@photos) do |photo|
  json.(photo, :title, :subtitle, :tags, :url)
end
