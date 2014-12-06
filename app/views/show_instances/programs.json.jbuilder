json.array!(@programs) do |p|
  json.extract! p, :id
  json.extract! p, :start
  json.extract! p, :end
  json.url show_instance_url(p, format: :html)
  json.title p.show.name
  json.color p.show.background_color
  json.textColor p.show.color
end