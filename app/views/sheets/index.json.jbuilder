json.array!(@sheets) do |sheet|
  json.extract! sheet, :id, :title, :text, :template, :text
  json.url sheet_url(sheet, format: :json)
end
