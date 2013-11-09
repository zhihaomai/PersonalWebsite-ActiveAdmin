json.(@blogs) do |blog|
  json.(blog, :title, :image, :body, :date, :tags)
end
