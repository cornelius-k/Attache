json.array!(@sections) do |section|
  json.extract! section, :id, :type, :string, :title, :string, :sheet, :references
  json.url section_url(section, format: :json)
end
