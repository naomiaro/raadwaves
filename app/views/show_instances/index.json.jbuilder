json.array!(@show_instances) do |show_instance|
  json.extract! show_instance, :id
  json.extract! show_instance, :start
  json.extract! show_instance, :end
  json.url show_instance_url(show_instance, format: :json)
end
