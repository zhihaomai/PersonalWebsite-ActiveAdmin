json.(@blogs) do |blog|
  json.(blog, :title, :image, :body, :link, :tags)
end
