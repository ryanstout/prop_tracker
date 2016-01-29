json.array!(@camera_properties) do |camera_property|
  json.extract! camera_property, :id, :name, :prop_hash, :properties
  json.url camera_property_url(camera_property, format: :json)
end
