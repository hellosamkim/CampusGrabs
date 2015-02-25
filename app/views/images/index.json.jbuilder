json.array!(@images) do |image|
  json.extract! image, :id, :listing_id
  json.url image_url(image, format: :json)
end
