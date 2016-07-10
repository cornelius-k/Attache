json.array!(@sheets) do |sheet|
  json.extract! sheet, :id, :title, :template, :dossier_id
  json.url sheet_url(sheet, format: :json)
end
