json.(@blogs) do |blog|
  json.(blog, :id, :title, :image, :body, :date, :likes, :dislikes)
end
