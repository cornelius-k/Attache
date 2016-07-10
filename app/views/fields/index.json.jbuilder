json.array!(@fields) do |field|
  json.extract! field, :id, :content, :section_id
  json.url field_url(field, format: :json)
end
