json.array!(@show_instances) do |show_instance|
  json.extract! show_instance, :id
  json.url show_instance_url(show_instance, format: :json)
end
