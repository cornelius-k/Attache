json.array!(@dossiers) do |dossier|
  json.extract! dossier, :id, :title, :text, :template, :text
  json.url dossier_url(dossier, format: :json)
end
